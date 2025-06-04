/*
 * Helper module responsible for dispatching memory read transactions:
 * 
 * - Orchestrates PCIe read operations based on both physical and virtual addresses.
 * - Accepts control commands and tag markings to differentiate between standard and pointer-based transactions.
 * - Performs 4-level virtual-to-physical address translation using saved state and multi-stage page table traversal.
 * - Stages include sequential reads through paging hierarchy: PML4 → PDPT → PD → PT → final page.
 * - Converts valid virtual pointer to physical address, then emits read request with a predefined tag.
 * - Handles payload parsing across multiple clock cycles, utilizing staged receive logic to reconstruct addresses.
 * - Decouples memory read dispatch from analysis logic.
 * 
 * Code has been redacted for ethical and security reasons.
 * 345 LOC
 */