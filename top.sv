/*
 * Top-level integration module for coordinating subsystems with PCIe and USB-based I/O:
 * 
 * - Instantiates PCIe transceiver core and routes bidirectional data via structured AXI-Stream interfaces.
 * - Manages arbitration logic for transmission control, prioritizing firmware over DMA in case of conflict.
 * - Integrates FT601 interface for external control signaling and data output, conditionally replaced by a debug path if debugging is enabled.
 * - Aggregates structured diagnostic registers for selected subsystems when debug flags are active.
 * - Exposes triggers to initiate internal scanning and analysis modules from the USB interface.
 * - Modular wrapper structure enables conditional compilation and clean decoupling of firmware, DMA, and debugging logic.
 * 
 * Code has been redacted for ethical and security reasons.
 * 511 LOC
 */