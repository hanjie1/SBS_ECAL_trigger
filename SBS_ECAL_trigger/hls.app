<project xmlns="com.autoesl.autopilot.project" name="SBS_ECAL_trigger" top="ecal_cosmic_hls" projectType="C/C++">
    <includePaths/>
    <libraryPaths/>
    <Simulation argv="">
        <SimFlow name="csim" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="ecal_cosmic_hls.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../../ecal_cosmic_hls_tb.cpp" sc="0" tb="1" cflags="-lpthread -Wno-unknown-pragmas" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
        <solution name="crate1" status="inactive"/>
        <solution name="crate2" status="inactive"/>
        <solution name="crate3_4_5" status="inactive"/>
        <solution name="crate6" status="inactive"/>
        <solution name="crate7" status="inactive"/>
    </solutions>
</project>

