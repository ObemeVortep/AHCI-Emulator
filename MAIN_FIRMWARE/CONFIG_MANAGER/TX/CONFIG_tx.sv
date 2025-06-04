/*
 * Transmission handler for PCIe configuration completions (Cpl/CplD):
 *
 * - Coordinates arbitration of the transmit interface to respond to CfgRd and CfgWr requests.
 * - Issues Completion TLPs with and without data using FIFO-backed control flow.
 * - Reads/writes internal capability register space stored in BRAM with precise timing alignment.
 * - Includes debug state tracking for all key FSM states relevant to Cfg response lifecycle.
 *
 * Code has been redacted for ethical and security reasons.
 * 422 LOC
 */