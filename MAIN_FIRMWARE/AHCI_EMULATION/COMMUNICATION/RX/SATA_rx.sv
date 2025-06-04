/*
 * Handles inbound PCIe TLP traffic for a simulated SATA controller:
 *
 * - Classifies and processes 1DW Memory Read (MRd) and Memory Write (MWr) requests.
 * - Routes register read responses into a FIFO for completion handling.
 * - Queues register write operations into an update FIFO for later application.
 * - Extracts payloads from specific completions with Tag 31.
 * - Performs endian correction for AXI-transferred data.
 *
 * Code has been redacted for ethical and security reasons.
 * 285 LOC
 */