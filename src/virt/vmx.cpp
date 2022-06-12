#include "virt/vmx.h"

extern "C" bool asm_enable_vmx(void);

namespace kl
{
  void enable_vmx(void) { asm_enable_vmx(); }
}  // namespace kl