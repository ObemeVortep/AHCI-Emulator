/*
 * Central logic module for orchestrating memory readback and entity extraction over PCIe:
 * 
 * - Coordinates multiple sequential scanning stages, each responsible for locating a target structure or pointer in memory.
 * - Controls exclusive access to PCIe TX logic based on internal module activity.
 * - Uses structured routing of TX signals depending on current progress (initial scan, pointer extraction, final monitoring).
 * - Interfaces with submodules to:
 *     - Identify a memory region of interest.
 *     - Resolve virtual-to-physical mapping and key offsets.
 *     - Parse data structures and extract relevant values into output register.
 * - Provides debug register access and internal state visibility for optional diagnostic instrumentation.
 * - Maintains readiness to receive completion responses while respecting FIFO availability and backpressure.
 * 
 * Code has been redacted for ethical and security reasons.
 * 261 LOC
 */