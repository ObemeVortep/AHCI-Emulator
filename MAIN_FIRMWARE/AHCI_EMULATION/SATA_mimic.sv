/*
 * Emulation module for a minimal SATA host controller with integrated disk logic:
 *
 * - Coordinates three main submodules to replicate SATA command-response behavior over PCIe:
 *     • A state engine handling controller initialization, command parsing, and execution.
 *     • A communication handler managing RX/TX PCIe interfaces and data movement.
 *     • A register interface responding to memory-mapped register writes via FIFO.
 * - Maintains internal controller and port register sets as per AHCI specification.
 * - Tracks and logs both read and write register accesses for debugging and verification.
 * - Monitors SATA protocol states and transitions via a multi-phase FSM (init, work, special).
 * - Generates MSI interrupts based on controller events and drive emulation.
 * - Exposes extensive debug data including recent TLP activity, state transitions, and command traces.
 *
 * Code has been redacted for ethical and security reasons.
 * 570 LOC
 */