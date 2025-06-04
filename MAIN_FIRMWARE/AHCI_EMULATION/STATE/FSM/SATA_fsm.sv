/*
 * SATA_fsm module implements the finite state machine controlling the internal operation
 * of the SATA controller and connected disk.
 *
 * It manages the HBA (Host Bus Adapter) states including initialization, command processing,
 * response emulation, and interrupt generation.
 *
 * Key internal features include:
 *  - Tracking and transitioning through initialization steps such as global reset and
 *    port readiness.
 *  - Detecting incoming commands and moving through command check, response generation,
 *    and cleanup states.
 *  - Handling asynchronous handshakes with other modules to coordinate command execution.
 *  - Managing MSI interrupt generation, conditional on register settings and controller state.
 *  - Exposing current global, initialization, work, and special states for external monitoring.
 *
 * The FSM relies on the controller and port registers as inputs, interpreting these to
 * determine when to progress through states or generate interrupts.
 *
 * Debug signals can be enabled for monitoring FSM progress.
 *
 * Code has been redacted for ethical and security reasons.
 * 289 LOC
 */