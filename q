config ARM64
	def_bool y
	select ACPI_CCA_REQUIRED if ACPI
	select ACPI_GENERIC_GSI if ACPI
	select ACPI_REDUCED_HARDWARE_ONLY if ACPI
	select ARCH_HAS_ATOMIC64_DEC_IF_POSITIVE
	select ARCH_HAS_ELF_RANDOMIZE
	select ARCH_HAS_GCOV_PROFILE_ALL
	select ARCH_HAS_SG_CHAIN
	select ARCH_HAS_TICK_BROADCAST if GENERIC_CLOCKEVENTS_BROADCAST
	select ARCH_USE_CMPXCHG_LOCKREF
	select ARCH_SUPPORTS_ATOMIC_RMW
	select ARCH_WANT_OPTIONAL_GPIOLIB
	select ARCH_WANT_COMPAT_IPC_PARSE_VERSION
	select ARCH_WANT_FRAME_POINTERS
	select ARCH_HAS_UBSAN_SANITIZE_ALL
	select ARM_AMBA
	select ARM_ARCH_TIMER
	select ARM_GIC
	select AUDIT_ARCH_COMPAT_GENERIC
	select ARM_GIC_V2M if PCI_MSI
	select ARM_GIC_V3
	select ARM_GIC_V3_ITS if PCI_MSI
	select ARM_PSCI_FW
	select BUILDTIME_EXTABLE_SORT if !RELOCATABLE_KERNEL
	select CLONE_BACKWARDS
	select COMMON_CLK
	select CPU_PM if (SUSPEND || CPU_IDLE)
	select DCACHE_WORD_ACCESS
	select EDAC_SUPPORT
	select FRAME_POINTER
	select GENERIC_ALLOCATOR
	select GENERIC_CLOCKEVENTS
	select GENERIC_CLOCKEVENTS_BROADCAST
	select GENERIC_CPU_AUTOPROBE
	select GENERIC_EARLY_IOREMAP
	select GENERIC_IDLE_POLL_SETUP
	select GENERIC_IRQ_PROBE
	select GENERIC_IRQ_SHOW
	select GENERIC_IRQ_SHOW_LEVEL
	select GENERIC_PCI_IOMAP
	select GENERIC_SCHED_CLOCK
	select GENERIC_SMP_IDLE_THREAD
	select GENERIC_STRNCPY_FROM_USER
	select GENERIC_STRNLEN_USER
	select GENERIC_TIME_VSYSCALL
	select HANDLE_DOMAIN_IRQ
	select HARDIRQS_SW_RESEND
	select HAVE_ALIGNED_STRUCT_PAGE if SLUB
	select HAVE_ARCH_AUDITSYSCALL
	select HAVE_ARCH_BITREVERSE
	select HAVE_ARCH_HARDENED_USERCOPY
	select HAVE_ARCH_HUGE_VMAP
	select HAVE_ARCH_JUMP_LABEL
	select HAVE_ARCH_KASAN if SPARSEMEM_VMEMMAP && !(ARM64_16K_PAGES && ARM64_VA_BITS_48)
	select HAVE_ARCH_KGDB
	select HAVE_ARCH_MMAP_RND_BITS
	select HAVE_ARCH_MMAP_RND_COMPAT_BITS if COMPAT
	select HAVE_ARCH_SECCOMP_FILTER
	select HAVE_ARCH_TRACEHOOK
	select HAVE_BPF_JIT
	select HAVE_C_RECORDMCOUNT
	select HAVE_CC_STACKPROTECTOR
	select HAVE_CMPXCHG_DOUBLE
	select HAVE_CMPXCHG_LOCAL
	select HAVE_DEBUG_BUGVERBOSE
	select HAVE_DEBUG_KMEMLEAK
	select HAVE_DMA_API_DEBUG
	select HAVE_DMA_ATTRS
	select HAVE_DMA_CONTIGUOUS
	select HAVE_DYNAMIC_FTRACE
	select HAVE_EFFICIENT_UNALIGNED_ACCESS
	select HAVE_FTRACE_MCOUNT_RECORD
	select HAVE_FUNCTION_TRACER
	select HAVE_FUNCTION_GRAPH_TRACER
	select HAVE_GENERIC_DMA_COHERENT
	select HAVE_HW_BREAKPOINT if PERF_EVENTS
	select HAVE_IRQ_TIME_ACCOUNTING
	select HAVE_MEMBLOCK
	select HAVE_PATA_PLATFORM
	select HAVE_PERF_EVENTS
	select HAVE_PERF_REGS
	select HAVE_PERF_USER_STACK_DUMP
	select HAVE_RCU_TABLE_FREE
	select HAVE_SYSCALL_TRACEPOINTS
	select IOMMU_DMA if IOMMU_SUPPORT
	select IRQ_DOMAIN
	select IRQ_FORCED_THREADING
	select MODULES_USE_ELF_RELA
	select NO_BOOTMEM
	select OF
	select OF_EARLY_FLATTREE
	select OF_RESERVED_MEM
	select PERF_USE_VMALLOC
	select POWER_RESET
	select POWER_SUPPLY
	select SPARSE_IRQ
	select SYSCTL_EXCEPTION_TRACE
	select HAVE_CONTEXT_TRACKING
	select HAVE_ARM_SMCCC
	select SECCOMP
	help
	  ARM 64-bit (AArch64) Linux support.

config 64BIT
	def_bool y

config ARCH_PHYS_ADDR_T_64BIT
	def_bool y

config MMU
	def_bool y

config ARCH_MMAP_RND_BITS_MIN
       default 14 if ARM64_64K_PAGES
       default 16 if ARM64_16K_PAGES
       default 18

# max bits determined by the following formula:
#  VA_BITS - PAGE_SHIFT - 3
config ARCH_MMAP_RND_BITS_MAX
       default 19 if ARM64_VA_BITS=36
       default 24 if ARM64_VA_BITS=39
       default 27 if ARM64_VA_BITS=42
       default 30 if ARM64_VA_BITS=47
       default 29 if ARM64_VA_BITS=48 && ARM64_64K_PAGES
       default 31 if ARM64_VA_BITS=48 && ARM64_16K_PAGES
       default 33 if ARM64_VA_BITS=48
       default 14 if ARM64_64K_PAGES
       default 16 if ARM64_16K_PAGES
       default 18

config ARCH_MMAP_RND_COMPAT_BITS_MIN
       default 7 if ARM64_64K_PAGES
       default 9 if ARM64_16K_PAGES
       default 11

config ARCH_MMAP_RND_COMPAT_BITS_MAX
       default 16

config NO_IOPORT_MAP
	def_bool y if !PCI

config ILLEGAL_POINTER_VALUE
	hex
	default 0xdead000000000000

config STACKTRACE_SUPPORT
	def_bool y

config ILLEGAL_POINTER_VALUE
	hex
	default 0xdead000000000000

config LOCKDEP_SUPPORT
	def_bool y

config TRACE_IRQFLAGS_SUPPORT
	def_bool y

config TRACE_TASK_USAGE
	def_bool y

config RWSEM_XCHGADD_ALGORITHM
	def_bool y

config GENERIC_BUG
	def_bool y
	depends on BUG

config GENERIC_BUG_RELATIVE_POINTERS
	def_bool y
	depends on GENERIC_BUG

config GENERIC_HWEIGHT
	def_bool y

config GENERIC_CSUM
        def_bool y

config GENERIC_CALIBRATE_DELAY
	def_bool y

config ZONE_DMA
	def_bool n

config HAVE_GENERIC_RCU_GUP
	def_bool y

config ARCH_DMA_ADDR_T_64BIT
	def_bool y

config NEED_DMA_MAP_STATE
	def_bool y

config NEED_SG_DMA_LENGTH
	def_bool y

config SMP
	def_bool y

config SWIOTLB
	def_bool y

config IOMMU_HELPER
	def_bool SWIOTLB

config KERNEL_MODE_NEON
	def_bool y

config FIX_EARLYCON_MEM
	def_bool y

config PGTABLE_LEVELS
	int
	default 2 if ARM64_16K_PAGES && ARM64_VA_BITS_36
	default 2 if ARM64_64K_PAGES && ARM64_VA_BITS_42
	default 3 if ARM64_64K_PAGES && ARM64_VA_BITS_48
	default 3 if ARM64_4K_PAGES && ARM64_VA_BITS_39
	default 3 if ARM64_16K_PAGES && ARM64_VA_BITS_47
	default 4 if !ARM64_64K_PAGES && ARM64_VA_BITS_48

source "init/Kconfig"

source "kernel/Kconfig.freezer"

source "arch/arm64/Kconfig.platforms"

source "arch/arm64/mach-exynos/Kconfig"

menu "Bus support"

config PCI
	bool "PCI support"
	help
	  This feature enables support for PCI bus system. If you say Y
	  here, the kernel will include drivers and infrastructure code
	  to support PCI bus devices.

config PCI_DOMAINS
	def_bool PCI

config PCI_DOMAINS_GENERIC
	def_bool PCI

config PCI_SYSCALL
	def_bool PCI

source "drivers/pci/Kconfig"
source "drivers/pci/pcie/Kconfig"
source "drivers/pci/hotplug/Kconfig"

endmenu

menu "Kernel Features"

menu "ARM errata workarounds via the alternatives framework"

config ARM64_ERRATUM_826319
	bool "Cortex-A53: 826319: System might deadlock if a write cannot complete until read data is accepted"
	default y
	help
	  This option adds an alternative code sequence to work around ARM
	  erratum 826319 on Cortex-A53 parts up to r0p2 with an AMBA 4 ACE or
	  AXI master interface and an L2 cache.

	  If a Cortex-A53 uses an AMBA AXI4 ACE interface to other processors
	  and is unable to accept a certain write via this interface, it will
	  not progress on read data presented on the read data channel and the
	  system can deadlock.

	  The workaround promotes data cache clean instructions to
	  data cache clean-and-invalidate.
	  Please note that this does not necessarily enable the workaround,
	  as it depends on the alternative framework, which will only patch
	  the kernel if an affected CPU is detected.

	  If unsure, say Y.

config ARM64_ERRATUM_827319
	bool "Cortex-A53: 827319: Data cache clean instructions might cause overlapping transactions to the interconnect"
	default y
	help
	  This option adds an alternative code sequence to work around ARM
	  erratum 827319 on Cortex-A53 parts up to r0p2 with an AMBA 5 CHI
	  master interface and an L2 cache.

	  Under certain conditions this erratum can cause a clean line eviction
	  to occur at the same time as another transaction to the same address
	  on the AMBA 5 CHI interface, which can cause data corruption if the
	  interconnect reorders the two transactions.

	  The workaround promotes data cache clean instructions to
	  data cache clean-and-invalidate.
	  Please note that this does not necessarily enable the workaround,
	  as it depends on the alternative framework, which will only patch
	  the kernel if an affected CPU is detected.

	  If unsure, say Y.

config ARM64_ERRATUM_824069
	bool "Cortex-A53: 824069: Cache line might not be marked as clean after a CleanShared snoop"
	default y
	help
	  This option adds an alternative code sequence to work around ARM
	  erratum 824069 on Cortex-A53 parts up to r0p2 when it is connected
	  to a coherent interconnect.

	  If a Cortex-A53 processor is executing a store or prefetch for
	  write instruction at the same time as a processor in another
	  cluster is executing a cache maintenance operation to the same
	  address, then this erratum might cause a clean cache line to be
	  incorrectly marked as dirty.

	  The workaround promotes data cache clean instructions to
	  data cache clean-and-invalidate.
	  Please note that this option does not necessarily enable the
	  workaround, as it depends on the alternative framework, which will
	  only patch the kernel if an affected CPU is detected.

	  If unsure, say Y.

config ARM64_ERRATUM_819472
	bool "Cortex-A53: 819472: Store exclusive instructions might cause data corruption"
	default y
	help
	  This option adds an alternative code sequence to work around ARM
	  erratum 819472 on Cortex-A53 parts up to r0p1 with an L2 cache
	  present when it is connected to a coherent interconnect.

	  If the processor is executing a load and store exclusive sequence at
	  the same time as a processor in another cluster is executing a cache
	  maintenance operation to the same address, then this erratum might
	  cause data corruption.

	  The workaround promotes data cache clean instructions to
	  data cache clean-and-invalidate.
	  Please note that this does not necessarily enable the workaround,
	  as it depends on the alternative framework, which will only patch
	  the kernel if an affected CPU is detected.

	  If unsure, say Y.

config ARM64_ERRATUM_832075
	bool "Cortex-A57: 832075: possible deadlock on mixing exclusive memory accesses with device loads"
	default y
	help
	  This option adds an alternative code sequence to work around ARM
	  erratum 832075 on Cortex-A57 parts up to r1p2.

	  Affected Cortex-A57 parts might deadlock when exclusive load/store
	  instructions to Write-Back memory are mixed with Device loads.

	  The workaround is to promote device loads to use Load-Acquire
	  semantics.
	  Please note that this does not necessarily enable the workaround,
	  as it depends on the alternative framework, which will only patch
	  the kernel if an affected CPU is detected.

	  If unsure, say Y.

config ARM64_ERRATUM_834220
	bool "Cortex-A57: 834220: Stage 2 translation fault might be incorrectly reported in presence of a Stage 1 fault"
	depends on KVM
	default y
	help
	  This option adds an alternative code sequence to work around ARM
	  erratum 834220 on Cortex-A57 parts up to r1p2.

	  Affected Cortex-A57 parts might report a Stage 2 translation
	  fault as the result of a Stage 1 fault for load crossing a
	  page boundary when there is a permission or device memory
	  alignment fault at Stage 1 and a translation fault at Stage 2.

	  The workaround is to verify that the Stage 1 translation
	  doesn't generate a fault before handling the Stage 2 fault.
	  Please note that this does not necessarily enable the workaround,
	  as it depends on the alternative framework, which will only patch
	  the kernel if an affected CPU is detected.

	  If unsure, say Y.

config ARM64_ERRATUM_845719
	bool "Cortex-A53: 845719: a load might read incorrect data"
	depends on COMPAT
	default y
	help
	  This option adds an alternative code sequence to work around ARM
	  erratum 845719 on Cortex-A53 parts up to r0p4.

	  When running a compat (AArch32) userspace on an affected Cortex-A53
	  part, a load at EL0 from a virtual address that matches the bottom 32
	  bits of the virtual address used by a recent load at (AArch64) EL1
	  might return incorrect data.

	  The workaround is to write the contextidr_el1 register on exception
	  return to a 32-bit task.
	  Please note that this does not necessarily enable the workaround,
	  as it depends on the alternative framework, which will only patch
	  the kernel if an affected CPU is detected.

	  If unsure, say Y.

config ARM64_ERRATUM_843419
	bool "Cortex-A53: 843419: A load or store might access an incorrect address"
	depends on MODULES
	default y
	select ARM64_MODULE_CMODEL_LARGE
	help
	  This option builds kernel modules using the large memory model in
	  order to avoid the use of the ADRP instruction, which can cause
	  a subsequent memory access to use an incorrect address on Cortex-A53
	  parts up to r0p4.

	  Note that the kernel itself must be linked with a version of ld
	  which fixes potentially affected ADRP instructions through the
	  use of veneers.

	  If unsure, say Y.

config ARM64_ERRATUM_1024718
	bool "Cortex-A55: 1024718: Update of DBM/AP bits without break before make might result in incorrect update"
	default y
	help
	  This option adds work around for Arm Cortex-A55 Erratum 1024718.

	  Affected Cortex-A55 cores (all revisions) could cause incorrect
	  update of the hardware dirty bit when the DBM/AP bits are updated
	  without a break-before-make. The work around is to disable the usage
	  of hardware DBM locally on the affected cores. CPUs not affected by
	  erratum will continue to use the feature.

	  If unsure, say Y.

config CAVIUM_ERRATUM_22375
	bool "Cavium erratum 22375, 24313"
	default y
	help
	  Enable workaround for erratum 22375, 24313.

	  This implements two gicv3-its errata workarounds for ThunderX. Both
	  with small impact affecting only ITS table allocation.

	    erratum 22375: only alloc 8MB table size
	    erratum 24313: ignore memory access type

	  The fixes are in ITS initialization and basically ignore memory access
	  type and table size provided by the TYPER and BASER registers.

	  If unsure, say Y.

config CAVIUM_ERRATUM_23144
	bool "Cavium erratum 23144: ITS SYNC hang on dual socket system"
	depends on NUMA
	default y
	help
	  ITS SYNC command hang for cross node io and collections/cpu mapping.

	  If unsure, say Y.

config CAVIUM_ERRATUM_23154
	bool "Cavium erratum 23154: Access to ICC_IAR1_EL1 is not sync'ed"
	default y
	help
	  The gicv3 of ThunderX requires a modified version for
	  reading the IAR status to ensure data synchronization
	  (access to icc_iar1_el1 is not sync'ed before and after).

	  If unsure, say Y.

config CAVIUM_ERRATUM_27456
	bool "Cavium erratum 27456: Broadcast TLBI instructions may cause icache corruption"
	default y
	help
	  On ThunderX T88 pass 1.x through 2.1 parts, broadcast TLBI
	  instructions may cause the icache to become corrupted if it
	  contains data for a non-current ASID.  The fix is to
	  invalidate the icache when changing the mm context.

	  If unsure, say Y.

endmenu


choice
	prompt "Page size"
	default ARM64_4K_PAGES
	help
	  Page size (translation granule) configuration.

config ARM64_4K_PAGES
	bool "4KB"
	help
	  This feature enables 4KB pages support.

config ARM64_16K_PAGES
	bool "16KB"
	help
	  The system will use 16KB pages support. AArch32 emulation
	  requires applications compiled with 16K (or a multiple of 16K)
	  aligned segments.

config ARM64_64K_PAGES
	bool "64KB"
	help
	  This feature enables 64KB pages support (4KB by default)
	  allowing only two levels of page tables and faster TLB
	  look-up. AArch32 emulation requires applications compiled
	  with 64K aligned segments.

endchoice

choice
	prompt "Virtual address space size"
	default ARM64_VA_BITS_39 if ARM64_4K_PAGES
	default ARM64_VA_BITS_47 if ARM64_16K_PAGES
	default ARM64_VA_BITS_42 if ARM64_64K_PAGES
	help
	  Allows choosing one of multiple possible virtual address
	  space sizes. The level of translation table is determined by
	  a combination of page size and virtual address space size.

config ARM64_VA_BITS_36
	bool "36-bit" if EXPERT
	depends on ARM64_16K_PAGES

config ARM64_VA_BITS_39
	bool "39-bit"
	depends on ARM64_4K_PAGES

config ARM64_VA_BITS_42
	bool "42-bit"
	depends on ARM64_64K_PAGES

config ARM64_VA_BITS_47
	bool "47-bit"
	depends on ARM64_16K_PAGES

config ARM64_VA_BITS_48
	bool "48-bit"

endchoice

config ARM64_VA_BITS
	int
	default 36 if ARM64_VA_BITS_36
	default 39 if ARM64_VA_BITS_39
	default 42 if ARM64_VA_BITS_42
	default 47 if ARM64_VA_BITS_47
	default 48 if ARM64_VA_BITS_48

config CPU_BIG_ENDIAN
       bool "Build big-endian kernel"
       help
         Say Y if you plan on running a kernel in big-endian mode.

config SCHED_MC
	bool "Multi-core scheduler support"
	help
	  Multi-core scheduler support improves the CPU scheduler's decision
	  making when dealing with multi-core CPU chips at a cost of slightly
	  increased overhead in some places. If unsure say N here.

config SCHED_SMT
	bool "SMT scheduler support"
	help
	  Improves the CPU scheduler's decision making when dealing with
	  MultiThreading at a cost of slightly increased overhead in some
	  places. If unsure say N here.

config DISABLE_CPU_SCHED_DOMAIN_BALANCE
	bool "(EXPERIMENTAL) Disable CPU level scheduler load-balancing"
	help
	  Disables scheduler load-balancing at CPU sched domain level.

config SCHED_HMP
	bool "(EXPERIMENTAL) Heterogenous multiprocessor scheduling"
	depends on DISABLE_CPU_SCHED_DOMAIN_BALANCE && SCHED_MC && FAIR_GROUP_SCHED && !SCHED_AUTOGROUP
	help
	  Experimental scheduler optimizations for heterogeneous platforms.
	  Attempts to introspectively select task affinity to optimize power
	  and performance. Basic support for multiple (>2) cpu types is in place,
	  but it has only been tested with two types of cpus.
	  There is currently no support for migration of task groups, hence
	  !SCHED_AUTOGROUP. Furthermore, normal load-balancing must be disabled
	  between cpus of different type (DISABLE_CPU_SCHED_DOMAIN_BALANCE).

config SCHED_HMP_PRIO_FILTER
	bool "(EXPERIMENTAL) Filter HMP migrations by task priority"
	depends on SCHED_HMP
	help
	  Enables task priority based HMP migration filter. Any task with
	  a NICE value above the threshold will always be on low-power cpus
	  with less compute capacity.

config SCHED_HMP_PRIO_FILTER_VAL
	int "NICE priority threshold"
	default 5
	depends on SCHED_HMP_PRIO_FILTER

config HMP_FAST_CPU_MASK
	string "HMP scheduler fast CPU mask"
	depends on SCHED_HMP
	help
          Leave empty to use device tree information.
	  Specify the cpuids of the fast CPUs in the system as a list string,
	  e.g. cpuid 0+1 should be specified as 0-1.

config HMP_SLOW_CPU_MASK
	string "HMP scheduler slow CPU mask"
	depends on SCHED_HMP
	help
	  Leave empty to use device tree information.
	  Specify the cpuids of the slow CPUs in the system as a list string,
	  e.g. cpuid 0+1 should be specified as 0-1.

config HMP_VARIABLE_SCALE
	bool "Allows changing the load tracking scale through sysfs"
	depends on SCHED_HMP
	help
	  When turned on, this option exports the thresholds and load average
	  period value for the load tracking patches through sysfs.
	  The values can be modified to change the rate of load accumulation
	  and the thresholds used for HMP migration.
	  The load_avg_period_ms is the time in ms to reach a load average of
	  0.5 for an idle task of 0 load average ratio that start a busy loop.
	  The up_threshold and down_threshold is the value to go to a faster
	  CPU or to go back to a slower cpu.
	  The {up,down}_threshold are devided by 1024 before being compared
	  to the load average.
	  For examples, with load_avg_period_ms = 128 and up_threshold = 512,
	  a running task with a load of 0 will be migrated to a bigger CPU after
	  128ms, because after 128ms its load_avg_ratio is 0.5 and the real
	  up_threshold is 0.5.
	  This patch has the same behavior as changing the Y of the load
	  average computation to
	        (1002/1024)^(LOAD_AVG_PERIOD/load_avg_period_ms)
	  but it remove intermadiate overflows in computation.

config HMP_FREQUENCY_INVARIANT_SCALE
	bool "(EXPERIMENTAL) Frequency-Invariant Tracked Load for HMP"
	depends on HMP_VARIABLE_SCALE && CPU_FREQ
	default y
	help
	  Scales the current load contribution in line with the frequency
	  of the CPU that the task was executed on.
	  In this version, we use a simple linear scale derived from the
	  maximum frequency reported by CPUFreq.
	  Restricting tracked load to be scaled by the CPU's frequency
	  represents the consumption of possible compute capacity
	  (rather than consumption of actual instantaneous capacity as
	  normal) and allows the HMP migration's simple threshold
	  migration strategy to interact more predictably with CPUFreq's
	  asynchronous compute capacity changes.

config SCHED_HMP_LITTLE_PACKING
	bool "Small task packing for HMP"
	depends on SCHED_HMP
	default n
	help
	  Allows the HMP Scheduler to pack small tasks into CPUs in the
	  smallest HMP domain.
	  Controlled by two sysfs files in sys/kernel/hmp.
	  packing_enable: 1 to enable, 0 to disable packing. Default 1.
	  packing_limit: runqueue load ratio where a RQ is considered
	    to be full. Default is NICE_0_LOAD * 9/8.

config SCHED_HMP_TASK_BASED_SOFTLANDING
	bool "(EXPERIMENTAL) Task based softlanding for HMP down migration"
	depends on SCHED_HMP && CPU_FREQ
	help
	  Enables task based softlanding when HMP down migration.
	  The task based softlanding guarantees proper performance
	  to the down-migrated task by frequency qos lock.

config NR_CPUS
	int "Maximum number of CPUs (2-4096)"
	range 2 4096
	# These have to remain sorted largest to smallest
	default "64"

config LITTLE_CPU_MASK
	int "Bitmask of available LITTLE CPUs"
	help
	  This is a bitmask specifying which of the CPUs are LITTLE in a
	  heterogeneous system. Use 0 if you are unsure, which just results in
	  this storing the bitmask of all available CPUs.

config BIG_CPU_MASK
	int "Bitmask of available big CPUs"
	help
	  This is a bitmask specifying which of the CPUs are big in a
	  heterogeneous system. Use 0 if you are unsure, which just results in
	  this storing the bitmask of all available CPUs.

config HOTPLUG_CPU
	bool "Support for hot-pluggable CPUs"
	select GENERIC_IRQ_MIGRATION
	help
	  Say Y here to experiment with turning CPUs off and on.  CPUs
	  can be controlled through /sys/devices/system/cpu.

config TIMA
	bool "Enable TIMA(Trustzone based Integrity Measurement Archtecture feature"
	default n

config TIMA_LKMAUTH
	bool "Enable LKM authentication by TIMA"
	help
	  TIMA authenticates loaded kernel modules. Disable it if you don't
	  want TIMA enabled.

config RKP
	depends on !SEC_FACTORY
	bool "Samsung KNOX realtime kernel protection"
	select UH_RKP
	help
	  this enables realtime kernel protection

config UH_RKP
	bool "Enable RKP (Realtime Kernel Protection) UH feature"
	help
	  it protects a kernel text and etc.

config RKP_DEBUG
	depends on RKP
	default n
	bool "Support SS Sentinel for debugging"
	help
	  this enables to support sentinel

config RKP_KDP
	bool "Protection for cred structure"
	depends on RKP
	default n
	help
	  Prevents unauthorized cred modification.

config RKP_NS_PROT
	bool "Protection for namespace structure"
	depends on RKP_KDP
	default n
	help
	  Prevents unauthorized namespace modification.

config RKP_DMAP_PROT
	bool "Page Double Mapping protection"
	depends on RKP_KDP
	default n
	help
	  Prevents unauthorized mapping for page table.

config RKP_6G
	bool "Support 6G"
	depends on RKP
	help
	  support 6G

config RELOCATABLE_KERNEL
	bool "set kernel to relocatable in both virtual and physical address"
	default n
	help
	  This configuare will allow you to config the kernel into position independent kernel, with '--PIE' insert into LD script.

#
# BEGIN RKP_CFP CONFIG OPTIONS
#

menu "Control Flow Protection"

config RKP_CFP
	bool "JOPP and ROPP"
	# depends on RKP
	default n

config RKP_CFP_JOPP
	bool "JOP Prevention"
	select RKP_CFP
	default n

config RKP_CFP_JOPP_MAGIC
	hex 
	depends on RKP_CFP && RKP_CFP_JOPP
	default "0x00be7bad"

endmenu

#
# END RKP_CFP CONFIG OPTIONS
#

source kernel/Kconfig.preempt
source kernel/Kconfig.hz

config ARCH_SUPPORTS_DEBUG_PAGEALLOC
	def_bool y

config ARCH_HAS_HOLES_MEMORYMODEL
	def_bool y if SPARSEMEM

config ARCH_SPARSEMEM_ENABLE
	def_bool y
	select SPARSEMEM_VMEMMAP_ENABLE

config ARCH_SPARSEMEM_DEFAULT
	def_bool ARCH_SPARSEMEM_ENABLE

config ARCH_SELECT_MEMORY_MODEL
	def_bool ARCH_SPARSEMEM_ENABLE

config HAVE_ARCH_PFN_VALID
	def_bool ARCH_HAS_HOLES_MEMORYMODEL || !SPARSEMEM

config HW_PERF_EVENTS
	def_bool y
	depends on ARM_PMU

config SYS_SUPPORTS_HUGETLBFS
	def_bool y

config ARCH_WANT_HUGE_PMD_SHARE
	def_bool y if ARM64_4K_PAGES || (ARM64_16K_PAGES && !ARM64_VA_BITS_36)

config HAVE_ARCH_TRANSPARENT_HUGEPAGE
	def_bool y

config ARCH_HAS_CACHE_LINE_SIZE
	def_bool y

source "mm/Kconfig"

config SECCOMP
	bool "Enable seccomp to safely compute untrusted bytecode"
	---help---
	  This kernel feature is useful for number crunching applications
	  that may need to compute untrusted bytecode during their
	  execution. By using pipes or other transports made available to
	  the process as file descriptors supporting the read/write
	  syscalls, it's possible to isolate those applications in
	  their own address space using seccomp. Once seccomp is
	  enabled via prctl(PR_SET_SECCOMP), it cannot be disabled
	  and the task is only allowed to execute a few safe syscalls
	  defined by each seccomp mode.

config XEN_DOM0
	def_bool y
	depends on XEN

config XEN
	bool "Xen guest support on ARM64"
	depends on ARM64 && OF
	select SWIOTLB_XEN
	help
	  Say Y if you want to run Linux in a Virtual Machine on Xen on ARM64.

config FORCE_MAX_ZONEORDER
	int
	default "14" if (ARM64_64K_PAGES && TRANSPARENT_HUGEPAGE)
	default "12" if (ARM64_16K_PAGES && TRANSPARENT_HUGEPAGE)
	default "11"
	help
	  The kernel memory allocator divides physically contiguous memory
	  blocks into "zones", where each zone is a power of two number of
	  pages.  This option selects the largest power of two that the kernel
	  keeps in the memory allocator.  If you need to allocate very large
	  blocks of physically contiguous memory, then you may need to
	  increase this value.

	  This config option is actually maximum order plus one. For example,
	  a value of 11 means that the largest free memory block is 2^10 pages.

	  We make sure that we can allocate upto a HugePage size for each configuration.
	  Hence we have :
		MAX_ORDER = (PMD_SHIFT - PAGE_SHIFT) + 1 => PAGE_SHIFT - 2

	  However for 4K, we choose a higher default value, 11 as opposed to 10, giving us
	  4M allocations matching the default size used by generic code.

config UNMAP_KERNEL_AT_EL0
	bool "Unmap kernel when running in userspace (aka \"KAISER\")" if EXPERT
	default y
	help
	  Speculation attacks against some high-performance processors can
	  be used to bypass MMU permission checks and leak kernel data to
	  userspace. This can be defended against by unmapping the kernel
	  when running in userspace, mapping it back in on exception entry
	  via a trampoline page in the vector table.

	  If unsure, say Y.

menuconfig ARMV8_DEPRECATED
	bool "Emulate deprecated/obsolete ARMv8 instructions"
	depends on COMPAT
	help
	  Legacy software support may require certain instructions
	  that have been deprecated or obsoleted in the architecture.

	  Enable this config to enable selective emulation of these
	  features.

	  If unsure, say Y

if ARMV8_DEPRECATED

config SWP_EMULATION
	bool "Emulate SWP/SWPB instructions"
	help
	  ARMv8 obsoletes the use of A32 SWP/SWPB instructions such that
	  they are always undefined. Say Y here to enable software
	  emulation of these instructions for userspace using LDXR/STXR.

	  In some older versions of glibc [<=2.8] SWP is used during futex
	  trylock() operations with the assumption that the code will not
	  be preempted. This invalid assumption may be more likely to fail
	  with SWP emulation enabled, leading to deadlock of the user
	  application.

	  NOTE: when accessing uncached shared regions, LDXR/STXR rely
	  on an external transaction monitoring block called a global
	  monitor to maintain update atomicity. If your system does not
	  implement a global monitor, this option can cause programs that
	  perform SWP operations to uncached memory to deadlock.

	  If unsure, say Y

config CP15_BARRIER_EMULATION
	bool "Emulate CP15 Barrier instructions"
	help
	  The CP15 barrier instructions - CP15ISB, CP15DSB, and
	  CP15DMB - are deprecated in ARMv8 (and ARMv7). It is
	  strongly recommended to use the ISB, DSB, and DMB
	  instructions instead.

	  Say Y here to enable software emulation of these
	  instructions for AArch32 userspace code. When this option is
	  enabled, CP15 barrier usage is traced which can help
	  identify software that needs updating.

	  If unsure, say Y

config SETEND_EMULATION
	bool "Emulate SETEND instruction"
	help
	  The SETEND instruction alters the data-endianness of the
	  AArch32 EL0, and is deprecated in ARMv8.

	  Say Y here to enable software emulation of the instruction
	  for AArch32 userspace code.

	  Note: All the cpus on the system must have mixed endian support at EL0
	  for this feature to be enabled. If a new CPU - which doesn't support mixed
	  endian - is hotplugged in after this feature has been enabled, there could
	  be unexpected results in the applications.

	  If unsure, say Y
endif

config ARM64_SW_TTBR0_PAN
	bool "Emulate Privileged Access Never using TTBR0_EL1 switching"
	help
	  Enabling this option prevents the kernel from accessing
	  user-space memory directly by pointing TTBR0_EL1 to a reserved
	  zeroed area and reserved ASID. The user access routines
	  restore the valid TTBR0_EL1 temporarily.

menu "ARMv8.1 architectural features"

config ARM64_HW_AFDBM
	bool "Support for hardware updates of the Access and Dirty page flags"
	help
	  The ARMv8.1 architecture extensions introduce support for
	  hardware updates of the access and dirty information in page
	  table entries. When enabled in TCR_EL1 (HA and HD bits) on
	  capable processors, accesses to pages with PTE_AF cleared will
	  set this bit instead of raising an access flag fault.
	  Similarly, writes to read-only pages with the DBM bit set will
	  clear the read-only bit (AP[2]) instead of raising a
	  permission fault.

	  Kernels built with this configuration option enabled continue
	  to work on pre-ARMv8.1 hardware and the performance impact is
	  minimal. If unsure, say Y.

config ARM64_PAN
	bool "Enable support for Privileged Access Never (PAN)"
	help
	 Privileged Access Never (PAN; part of the ARMv8.1 Extensions)
	 prevents the kernel or hypervisor from accessing user-space (EL0)
	 memory directly.

	 Choosing this option will cause any unprotected (not using
	 copy_to_user et al) memory access to fail with a permission fault.

	 The feature is detected at runtime, and will remain as a 'nop'
	 instruction if the cpu does not implement the feature.

config ARM64_LSE_ATOMICS
	bool "Atomic instructions"
	help
	  As part of the Large System Extensions, ARMv8.1 introduces new
	  atomic instructions that are designed specifically to scale in
	  very large systems.

	  Say Y here to make use of these instructions for the in-kernel
	  atomic routines. This incurs a small overhead on CPUs that do
	  not support these instructions and requires the kernel to be
	  built with binutils >= 2.25.

endmenu

config ARM64_UAO
	bool "Enable support for User Access Override (UAO)"
	default y
	help
	  User Access Override (UAO; part of the ARMv8.2 Extensions)
	  causes the 'unprivileged' variant of the load/store instructions to
	  be overriden to be privileged.

	  This option changes get_user() and friends to use the 'unprivileged'
	  variant of the load/store instructions. This ensures that user-space
	  really did have access to the supplied memory. When addr_limit is
	  set to kernel memory the UAO bit will be set, allowing privileged
	  access to kernel memory.

	  Choosing this option will cause copy_to_user() et al to use user-space
	  memory permissions.

	  The feature is detected at runtime, the kernel will use the
	  regular load/store instructions if the cpu does not implement the
	  feature.

config ARM64_MODULE_CMODEL_LARGE
	bool

config ARM64_MODULE_PLTS
	bool
	select ARM64_MODULE_CMODEL_LARGE
	select HAVE_MOD_ARCH_SPECIFIC

config RELOCATABLE
	bool
	help
	  This builds the kernel as a Position Independent Executable (PIE),
	  which retains all relocation metadata required to relocate the
	  kernel binary at runtime to a different virtual address than the
	  address it was linked at.
	  Since AArch64 uses the RELA relocation format, this requires a
	  relocation pass at runtime even if the kernel is loaded at the
	  same address it was linked at.

config RANDOMIZE_BASE
	bool "Randomize the address of the kernel image"
	select ARM64_MODULE_PLTS if MODULES
	select RELOCATABLE
	help
	  Randomizes the virtual address at which the kernel image is
	  loaded, as a security feature that deters exploit attempts
	  relying on knowledge of the location of kernel internals.

	  It is the bootloader's job to provide entropy, by passing a
	  random u64 value in /chosen/kaslr-seed at kernel entry.

	  When booting via the UEFI stub, it will invoke the firmware's
	  EFI_RNG_PROTOCOL implementation (if available) to supply entropy
	  to the kernel proper. In addition, it will randomise the physical
	  location of the kernel Image as well.

	  If unsure, say N.

config RANDOMIZE_MODULE_REGION_FULL
	bool "Randomize the module region independently from the core kernel"
	depends on RANDOMIZE_BASE && !DYNAMIC_FTRACE
	default y
	help
	  Randomizes the location of the module region without considering the
	  location of the core kernel. This way, it is impossible for modules
	  to leak information about the location of core kernel data structures
	  but it does imply that function calls between modules and the core
	  kernel will need to be resolved via veneers in the module PLT.

	  When this option is not set, the module region will be randomized over
	  a limited range that contains the [_stext, _etext] interval of the
	  core kernel, so branch relocations are always in range.

endmenu

menu "Boot options"

config ARM64_ACPI_PARKING_PROTOCOL
	bool "Enable support for the ARM64 ACPI parking protocol"
	depends on ACPI
	help
	  Enable support for the ARM64 ACPI parking protocol. If disabled
	  the kernel will not allow booting through the ARM64 ACPI parking
	  protocol even if the corresponding data is present in the ACPI
	  MADT table.

config CMDLINE
	string "Default kernel command string"
	default ""
	help
	  Provide a set of default command-line options at build time by
	  entering them here. As a minimum, you should specify the the
	  root device (e.g. root=/dev/nfs).

choice
	prompt "Kernel command line type" if CMDLINE != ""
	default CMDLINE_FROM_BOOTLOADER

config CMDLINE_FROM_BOOTLOADER
	bool "Use bootloader kernel arguments if available"
	help
	  Uses the command-line options passed by the boot loader. If
	  the boot loader doesn't provide any, the default kernel command
	  string provided in CMDLINE will be used.

config CMDLINE_EXTEND
	bool "Extend bootloader kernel arguments"
	help
	  The command-line arguments provided by the boot loader will be
	  appended to the default kernel command string.

config CMDLINE_FORCE
	bool "Always use the default kernel command string"
	help
	  Always use the default kernel command string, even if the boot
	  loader passes other arguments to the kernel.
	  This is useful if you cannot or don't want to change the
	  command-line options your boot loader passes to the kernel.
endchoice

config EFI_STUB
	bool

config EFI
	bool "UEFI runtime support"
	depends on OF && !CPU_BIG_ENDIAN
	select LIBFDT
	select UCS2_STRING
	select EFI_PARAMS_FROM_FDT
	select EFI_RUNTIME_WRAPPERS
	select EFI_STUB
	select EFI_ARMSTUB
	default y
	help
	  This option provides support for runtime services provided
	  by UEFI firmware (such as non-volatile variables, realtime
          clock, and platform reset). A UEFI stub is also provided to
	  allow the kernel to be booted as an EFI application. This
	  is only useful on systems that have UEFI firmware.

config DMI
	bool "Enable support for SMBIOS (DMI) tables"
	depends on EFI
	default y
	help
	  This enables SMBIOS/DMI feature for systems.

	  This option is only useful on systems that have UEFI firmware.
	  However, even with this option, the resultant kernel should
	  continue to boot on existing non-UEFI platforms.

config BUILD_ARM64_APPENDED_DTB_IMAGE
	bool "Build a concatenated Image.gz/dtb by default"
	depends on OF
	help
	  Enabling this option will cause a concatenated Image.gz and list of
	  DTBs to be built by default (instead of a standalone Image.gz.)
	  The image will built in arch/arm64/boot/Image.gz-dtb

choice
	prompt "Appended DTB Kernel Image name"
	depends on BUILD_ARM64_APPENDED_DTB_IMAGE
	help
	  Enabling this option will cause a specific kernel image Image or
	  Image.gz to be used for final image creation.
	  The image will built in arch/arm64/boot/IMAGE-NAME-dtb

	config IMG_GZ_DTB
		bool "Image.gz-dtb"
	config IMG_DTB
		bool "Image-dtb"
endchoice

config BUILD_ARM64_APPENDED_KERNEL_IMAGE_NAME
	string
	depends on BUILD_ARM64_APPENDED_DTB_IMAGE
	default "Image.gz-dtb" if IMG_GZ_DTB
	default "Image-dtb" if IMG_DTB

config BUILD_ARM64_APPENDED_DTB_IMAGE_NAMES
	string "Default dtb names"
	depends on BUILD_ARM64_APPENDED_DTB_IMAGE
	help
	  Space separated list of names of dtbs to append when
	  building a concatenated Image.gz-dtb.

config LOD_SEC
	bool "kernel security re-enforcement for Linux On Dex, including cap re-check and seccomp report"
	default n

endmenu

menu "Userspace binary formats"

source "fs/Kconfig.binfmt"

config COMPAT
	bool "Kernel support for 32-bit EL0"
	depends on ARM64_4K_PAGES || EXPERT
	select COMPAT_BINFMT_ELF if BINFMT_ELF
	select HAVE_UID16
	select OLD_SIGSUSPEND3
	select COMPAT_OLD_SIGACTION
	help
	  This option enables support for a 32-bit EL0 running under a 64-bit
	  kernel at EL1. AArch32-specific components such as system calls,
	  the user helper functions, VFP support and the ptrace interface are
	  handled appropriately by the kernel.

	  If you use a page size other than 4KB (i.e, 16KB or 64KB), please be aware
	  that you will only be able to execute AArch32 binaries that were compiled
	  with page size aligned segments.

	  If you want to execute 32-bit userspace applications, say Y.

config KUSER_HELPERS
	bool "Enable the kuser helpers page in 32-bit processes"
	depends on COMPAT
	default y
	help
	  Warning: disabling this option may break 32-bit applications.

	  Provide kuser helpers in a special purpose fixed-address page. The
	  kernel provides helper code to userspace in read-only form at a fixed
	  location to allow userspace to be independent of the CPU type fitted
	  to the system. This permits 32-bit binaries to be run on ARMv6 through
	  to ARMv8 without modification.

	  See Documentation/arm/kernel_user_helpers.txt for details.

	  However, the fixed-address nature of these helpers can be used by ROP
	  (return-orientated programming) authors when creating exploits.

	  If all of the 32-bit binaries and libraries that run on your platform
	  are built specifically for your platform, and make no use of these
	  helpers, then you can turn this option off to hinder such exploits.
	  However, in that case, if a binary or library relying on those helpers
	  is run, it will receive a SIGSEGV signal, which will terminate the
	  program. Typically, binaries compiled for ARMv7 or later do not use
	  the kuser helpers.

	  Say N here only if you are absolutely certain that you do not need
	  these helpers; otherwise, the safe option is to say Y (the default
	  for now)

config SYSVIPC_COMPAT
	def_bool y
	depends on COMPAT && SYSVIPC

config KEYS_COMPAT
	def_bool y
	depends on COMPAT && KEYS

config COMPAT_VDSO
	bool "32-bit vDSO"
	depends on COMPAT
	select ARM_ARCH_TIMER_VCT_ACCESS
	default n
	help
	  Warning: a 32-bit toolchain is necessary to build the vDSO. You
	  must explicitly define which toolchain should be used by setting
	  CROSS_COMPILE_ARM32 to the prefix of the 32-bit toolchain (same format
	  as CROSS_COMPILE). If CROSS_COMPILE_ARM32 is empty, a warning will be
	  printed and the kernel will be built as if COMPAT_VDSO had not been
	  set. If CROSS_COMPILE_ARM32 is set to an invalid prefix, compilation
	  will be aborted.

	  Provide a vDSO to 32-bit processes. It includes the symbols provided
	  by the vDSO from the 32-bit kernel, so that a 32-bit libc can use
	  the compat vDSO without modification. It also provides sigreturn
	  trampolines, replacing the sigreturn page.

config CROSS_COMPILE_ARM32
	string "32-bit toolchain prefix"
	help
	  Same as setting CROSS_COMPILE_ARM32 in the environment, but saved for
	  future builds. The environment variable overrides this config option.

endmenu

menu "Power management options"

source "kernel/power/Kconfig"

config ARCH_SUSPEND_POSSIBLE
	def_bool y

endmenu

config SAMSUNG_PRODUCT_SHIP
	bool "set up for product shipping"
	default n

menu "CPU Power Management"

source "drivers/cpuidle/Kconfig"

source "drivers/cpufreq/Kconfig"

endmenu

source "net/Kconfig"

source "drivers/Kconfig"

source "drivers/firmware/Kconfig"

source "drivers/acpi/Kconfig"

source "fs/Kconfig"

source "arch/arm64/kvm/Kconfig"

source "arch/arm64/Kconfig.debug"

source "security/Kconfig"

source "crypto/Kconfig"
if CRYPTO
source "arch/arm64/crypto/Kconfig"
endif

source "lib/Kconfig"
