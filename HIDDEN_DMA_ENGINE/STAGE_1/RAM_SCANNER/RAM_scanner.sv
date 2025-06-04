/*
 * Memory scanner module:
 * 
 * - Continuously issues PCIe memory read requests (MRd) across a predefined address range.
 * - Operates only when bus mastering is enabled and scanning is explicitly started.
 * - Adapts packet generation based on target address width (32/64-bit).
 * - Enforces synchronization and sequential transmission through internal TX state machine.
 * - Monitors incoming completion packets to determine end-of-transfer using byte count logic.
 * - Designed to halt scanning upon request or after reaching a configured memory limit.
 * - Communicates scanning progress and status via control and info signals to the host logic.
 *
 * Code has been redacted for ethical and security reasons.
 * 293 LOC
 */