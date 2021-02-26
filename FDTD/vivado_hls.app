<project xmlns="com.autoesl.autopilot.project" name="FDTD" top="wrapper">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../tb.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="FDTD/fdtd.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="FDTD/kernel64x64.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="FDTD/stencil.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="FDTD/wrapper.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

