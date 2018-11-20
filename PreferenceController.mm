/*
 *  PreferencesWindowController.mm
 *  MachOView
 *
 *  Created by psaghelyi on 12/24/12.
 *
 */

#import "PreferenceController.h"

#include "disasm.h" // for the disassembler flags

@implementation MVPreferenceController

-(instancetype)init
{
  self = [super initWithWindowNibName:@"Preferences"];
  return self;
}

- (IBAction)toggleUseLLVMDisassembler:(id)sender
{
#if MAC_OS_X_VERSION_MIN_REQUIRED >= 101400
    qflag = (useLLVMDisassembler.state == NSControlStateValueOn);
#else
    qflag = (useLLVMDisassembler.state == NSOnState);
#endif
}

@end

