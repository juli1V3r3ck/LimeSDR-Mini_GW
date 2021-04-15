# ----------------------------------------------------------------------------
# FILE: 	top_timing.sdc
# DESCRIPTION:	
# DATE:	July 17, 2017
# AUTHOR(s):	Lime Microsystems
# REVISIONS:
# ----------------------------------------------------------------------------
# NOTES:
# 
# ----------------------------------------------------------------------------

# ----------------------------------------------------------------------------
#Timing parameters
# ----------------------------------------------------------------------------
set LMK_CLK_period			25.00

# ----------------------------------------------------------------------------
#Base clocks
# ----------------------------------------------------------------------------					
create_clock 	-name LMK_CLK \
					-period $LMK_CLK_period \
								[get_ports LMK_CLK]
								
derive_clock_uncertainty