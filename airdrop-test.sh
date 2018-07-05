# SPECIFICATION
#1. airdrop token to holders with minimum 50 EOS or more
#2. 45% of the void tokens will be allocated to the team (1 account or multiple?). The other 55% will be airdropped.
#3. Can we create our own snapshot to use for the airdrop (preferred) or would it be best to use the genesis snapshot available to everyone.

######################################### INSTRUCTIONS #######################################
# Start Docker
# cd /eos-instructions
# ./eos.sh so that the 'cleos' alias will be available

######################################## PRIVATE NET ##############################################
# check that eosio.io contract is there...

######################################## CREATE TOKEN #############################################
# SPECIFICATION

cleos push action eosio.token create '[ "tokenname1", "1000000000.0000 TOKEN", 0, 0, 0]' -p eosio.token

# CHECK THINGS...https://eosio-cleos.readme.io/reference#get
cleos get transactions eosio.token # see that 'eosio.token create' is a recorded transaction


########################################## AIRDROP ################################################
# Team accounts - Issue
cleos push action eosio.token issue '[ "user", "100.0000 EOS", "memo" ]' -p eosio
# Team accounts - Check
cleos get currency balance eosio.token tester EOS

# All Accounts - snapshot of accounts existing as of a specified historical block, as opposed to genesis block
# get the accounts...
# iterate through all accounts...
cleos push action eosio.token issue '[ "user", "100.0000 EOS", "memo" ]' -p eosio
cleos get currency balance eosio.token tester EOS


####################################################################################################

########################################## TESTNET ################################################
# probably need tokens staked...
# try on multiple testnets and analyze all results...


####################################################################################################

########################################## NOTES ################################################
# Transfer not needed, we're only Issuing...
#cleos push action eosio.token transfer '[ "user", "tester", "25.0000 EOS", "m" ]' -p user