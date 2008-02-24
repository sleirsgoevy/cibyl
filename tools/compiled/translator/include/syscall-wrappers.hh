/*********************************************************************
 *
 * Copyright (C) 2008,  Simon Kagstrom
 *
 * Filename:      syscall-wrappers.hh
 * Author:        Simon Kagstrom <simon.kagstrom@gmail.com>
 * Description:   Syscall wrapper generator stuff
 *
 * $Id:$
 *
 ********************************************************************/
#ifndef __SYSCALL_WRAPPERS_HH__
#define __SYSCALL_WRAPPERS_HH__

#include <syscall.hh>
#include <ght_hash_table.h>

class SyscallWrapperGenerator
{
public:
  /**
   * Create a new syscall wrapper generator.
   *
   * @param used_syscalls a table of syscall_db_entry_t's mapped by
   * syscall names. This should be freed by the calling entity
   */
  SyscallWrapperGenerator(ght_hash_table_t *used_syscalls);

  /* No pass1 - this will not be created until after pass1 */
  bool pass2();

private:
  ght_hash_table_t *used_syscalls;
};

#endif /* !__SYSCALL_WRAPPERS_HH__ */