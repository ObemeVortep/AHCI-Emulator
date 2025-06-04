/*
 * Arbitration wrapper for coordinating non-conflicting PCIe transmission between subsystem controllers:
 *
 * - Mediates access to shared TX interface between control logic and device emulation logic.
 * - Prioritizes configuration management over storage emulation and direct memory access.
 * - Synchronizes TX activity through forbidden flags and state tracking to ensure safe arbitration.
 * - Outputs unified RX readiness status only when both submodules can accept incoming data.
 * - Aggregates TX outputs conditionally based on the active subsystem.
 * - Provides MSI signaling to trigger host-level interrupts, exclusively handled by one submodule.
 * - Contains debug hooks for monitoring subsystem internals during development.
 *
 * Code has been redacted for ethical and security reasons.
 * 207 LOC
 */