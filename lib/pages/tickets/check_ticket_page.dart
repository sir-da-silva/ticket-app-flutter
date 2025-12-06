import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/event.graphql.dart';
import 'package:my_first_flutter_app/navigation/route_names.dart';

class CheckTicketPage extends StatefulWidget {
  final String eventId;

  const CheckTicketPage({super.key, required this.eventId});

  @override
  State<CheckTicketPage> createState() => _CheckTicketPageState();
}

class _CheckTicketPageState extends State<CheckTicketPage> with SingleTickerProviderStateMixin {
  final MobileScannerController controller = MobileScannerController();
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: const Duration(seconds: 2))
      ..repeat(reverse: true);
  }

  @override
  void dispose() {
    controller.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          MobileScanner(
            controller: controller,
            onDetect: (capture) async {
              final codes = capture.barcodes;

              if (codes.isNotEmpty && codes.first.rawValue != null) {
                print(" ------------------- Scanned Data ${codes.first.rawValue!}");
                controller.stop();

                await Navigator.pushNamed(
                  context,
                  RouteNames.scannedTicket,
                  arguments: codes.first.rawValue!,
                );

                controller.start();
              }
            },
          ),

          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              title: const Text("Vérifier un ticket"),
              elevation: 0,
              backgroundColor: Colors.black.withValues(alpha: 0.3),
              foregroundColor: Theme.of(context).colorScheme.surface,
            ),
          ),

          Query$GetEvent$Widget(
            options: Options$Query$GetEvent(
              variables: Variables$Query$GetEvent(id: widget.eventId),
            ),
            builder: (result, {fetchMore, refetch}) {
              Query$GetEvent? data;

              if (result.data != null) {
                data = Query$GetEvent.fromJson(result.data!);
              }

              return data?.event?.title == null || false
                  ? SizedBox()
                  : Positioned(
                      top: 100,
                      left: 16,
                      right: 16,
                      child: Center(
                        child: IntrinsicWidth(
                          child: Container(
                            padding: EdgeInsetsGeometry.symmetric(horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.5),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Row(
                              spacing: 8,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.calendar_month,
                                  size: 18,
                                  color: Theme.of(context).colorScheme.surface,
                                ),
                                Expanded(
                                  child: Text(
                                    data!.event!.title,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Theme.of(context).colorScheme.surface,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
            },
          ),

          // Overlay centré
          Center(child: _ScanFrame(animation: _animationController)),

          // Actions rapides
          Positioned(
            bottom: 40,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 34,
                  color: Colors.white,
                  icon: const Icon(Icons.flash_on),
                  onPressed: () => controller.toggleTorch(),
                ),
                const SizedBox(width: 30),
                IconButton(
                  iconSize: 34,
                  color: Colors.white,
                  icon: const Icon(Icons.cameraswitch_rounded),
                  onPressed: () => controller.switchCamera(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ScanFrame extends StatelessWidget {
  final Animation<double> animation;

  const _ScanFrame({required this.animation});

  @override
  Widget build(BuildContext context) {
    const double size = 260;

    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        children: [
          // Cadre lumineux
          Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.white.withValues(alpha: 0.8), width: 3),
            ),
          ),

          // Laser animé
          AnimatedBuilder(
            animation: animation,
            builder: (_, child) {
              return Positioned(
                top: animation.value * (size - 4),
                left: 0,
                right: 0,
                child: child!,
              );
            },
            child: Container(
              height: 4,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.red.withValues(alpha: 0.2),
                    Colors.red,
                    Colors.red.withValues(alpha: 0.2),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
