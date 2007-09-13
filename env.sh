# This is the directory of Cibyl, should be fine as it is
export CIBYL_BASE=`pwd`

# Cibyl uses grep to parse output from e.g., readelf and expects the
# messages to be in english. Thanks to "7not6" for pointing this out.
export LANG=en_US

# This is the directory where you have Sun Wireless toolkit installed
export WTK_PATH=/home/ska/j2me/WTK2.2/

# This is where you have javac etc installed (could be /usr/bin if appropriate)
export JAVA_PATH=/usr/lib/j2sdk1.5-sun/bin/

# Describes how to compile with javac
export CIBYL_JAVAC=$JAVA_PATH/javac
export CIBYL_JAVA_OPTS="-source 1.4 -bootclasspath $WTK_PATH/lib/cldcapi11.jar:$WTK_PATH/lib/midpapi20.jar"

# If you don't have binutils-multiarch, define these. Thanks to Roelof Berg for
# pointing this out
#export CIBYL_READELF=mips-unknown-elf-readelf
#export CIBYL_NM=mips-unknown-elf-nm
#export CIBYL_OBJCOPY=mips-unknown-elf-objcopy

#export CIBYL_CPP=cpp

# Some things which might need setting in windows. Thanks to Roelof Berg
#export CIBYL_JASMIN="java -jar c:/cygwin/home/dir/jasmin-2.3/jasmin.jar"
