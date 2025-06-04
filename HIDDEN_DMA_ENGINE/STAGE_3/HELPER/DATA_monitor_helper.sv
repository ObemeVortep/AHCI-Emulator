/*
 * Transmission engine for virtual address dereferencing and translation:
 * 
 * - Handles outbound read requests based exclusively on virtual address inputs.
 * - Requires an already-resolved control table base for address translation.
 * - Walks a multi-level paging structure: PML4 → PDPT → PD → PT → final page.
 * - Uses three-stage receive logic to reassemble physical addresses from completion packets.
 * - Issues a final memory read transaction with a specific tag once the translation completes.
 * - Ensures protocol alignment with PCIe by offloading TLP formation to a dedicated sender module.
 * - Designed specifically to support high-level analysis logic without physical address input paths.
 *
 * Code has been redacted for ethical and security reasons.
 * 306 LOC
 */