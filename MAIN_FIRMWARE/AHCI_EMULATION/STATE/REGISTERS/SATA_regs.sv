/*
 * SATA_regs module manages the internal controller and port registers for the SATA device.
 *
 * It interfaces with a FIFO that provides register write commands (MWr) and updates the
 * appropriate global and port registers accordingly, respecting read-only bits masks.
 *
 * The module implements:
 *  - A finite state machine to handle FIFO read states for register updates.
 *  - Tasks to process FIFO commands, update registers safely (avoiding overwriting read-only bits).
 *  - Logic to handle special register behaviors on global reset (e.g., COMRESET emulation).
 *  - Automatic command slot selection by scanning command issue bits and updating the command slot register.
 *  - Setting interrupt status bits (PxIS and global IS) according to responses and enabled interrupts.
 *  - Register state updates based on the SATA controller’s current global, initialization, work,
 *    and special states, simulating device and port behavior.
 *  - Initial register configuration to AHCI and port defaults during reset.
 *
 * The module tightly coordinates with the FSM and other SATA modules to maintain accurate
 * state and respond correctly to commands, interrupts, and device status.
 *
 * Code has been redacted for ethical and security reasons.
 * 363 LOC
 */