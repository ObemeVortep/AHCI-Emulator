/*
 * Configuration request handler and completer for PCIe initialization phase:
 *
 * - Monitors PCIe RX stream for incoming configuration reads (CfgRd) and writes (CfgWr).
 * - Queues incoming requests using dedicated FIFOs and processes them in respective TX modules.
 * - Responds to CfgRd with appropriate CplD (Completion with Data) packets.
 * - Responds to CfgWr with standard Cpl (Completion without Data) packets.
 * - Supports debug instrumentation, providing visibility into active states and request contents.
 * - Implements full request lifecycle handling, compliant with PCIe configuration transaction flow.
 *
 * Code has been redacted for ethical and security reasons.
 * 197 LOC
 */