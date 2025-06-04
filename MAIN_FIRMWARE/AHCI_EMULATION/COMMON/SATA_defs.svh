/*
 * Definitions for SATA controller emulation states and command response classification:
 *
 * - Enumerates global and internal states of a simulated SATA Host Bus Adapter (HBA):
 *     • Initialization sequence (reset emulation, FIS handling, readiness checks)
 *     • Active operation (command wait, decoding, response generation)
 *     • Special handling modes (MSI generation, handshake waits, debug idles)
 * 
 * - Defines a `fis_determinant` package with logic functions that classify SATA commands:
 *     • Determines which kind of FIS (Frame Information Structure) the controller must send back.
 *     • Supports response prediction for Register D2H FIS, Error D2H FIS, and PIO Setup FIS.
 *     • Functions analyze opcode values from Register H2D FIS command words.
 *
 * Code has been redacted for ethical and security reasons.
 * 99 LOC
 */