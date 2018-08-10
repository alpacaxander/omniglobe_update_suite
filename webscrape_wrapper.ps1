$LOCAL_WW = "C:\RT_Contents\RT_NRL_Wind_Waves"
$DOCKER_WW = "/dockercylc/webscrape/wind_waves"
$LOCAL_MSLP = "C:\RT_Contents\RT_NRL_mslp"
$DOCKER_MSLP = "/dockercylc/webscrape/mslp"
$LOCAL_10M = "C:\RT_Contents\RT_NRL_10m_winds"
$DOCKER_10M = "/dockercylc/webscrape/10m_winds"
$LOCAL_RELVOR = "C:\RT_Contents\RT_NRL_relvor"
$DOCKER_RELVOR = "/dockercylc/webscrape/relvor"
$LOCAL_SOL_RAD = "C:\RT_Contents\RT_NRL_sol_rad"
$DOCKER_SOL_RAD = "/dockercylc/webscrape/sol_rad"
$LOCAL_WV = "C:\RT_Contents\RT_WaterVapor"
$DOCKER_WV = "/dockercylc/webscrape/wv"
$LOCAL_AEROSOLS = "C:\RT_Contents\RT_Aerosols"
$DOCKER_AEROSOLS = "/dockercylc/webscrape/aerosols"
$LOCAL_IRBM = "C:\RT_Contents\NRL_Clouds_BlueMarble"
$DOCKER_IRBM = "/dockercylc/webscrape/ir_bluemarble"
$LOCAL_IR = "C:\RT_Contents\NRL_IR"
$DOCKER_IR = "/dockercylc/webscrape/ir"
$LOCAL_SUITE = "C:\cylc\webscrape"
$DOCKER_SUITE = "/dockercylc/webscrape"

$COLD_START = "coldstart=1"
$SUITE_NAME = "suitename=webscrape"

md ${LOCAL_WW} -ErrorAction SilentlyContinue
md ${LOCAL_MSLP} -ErrorAction SilentlyContinue
md ${LOCAL_10M} -ErrorAction SilentlyContinue
md ${LOCAL_RELVOR} -ErrorAction SilentlyContinue
md ${LOCAL_SOL_RAD} -ErrorAction SilentlyContinue
md ${LOCAL_WV} -ErrorAction SilentlyContinue
md ${LOCAL_AEROSOLS} -ErrorAction SilentlyContinue
md ${LOCAL_IRBM} -ErrorAction SilentlyContinue
md ${LOCAL_IR} -ErrorAction SilentlyContinue
md ${LOCAL_SUITE} -ErrorAction SilentlyContinue

docker run -d -v ${LOCAL_RELVOR}:${DOCKER_RELVOR} -v ${LOCAL_SOL_RAD}:${DOCKER_SOL_RAD} -v ${LOCAL_IR}:${DOCKER_IR} -v ${LOCAL_WW}:${DOCKER_WW} -v ${LOCAL_MSLP}:${DOCKER_MSLP} -v ${LOCAL_10M}:${DOCKER_10M} -v ${LOCAL_WV}:${DOCKER_WV} -v ${LOCAL_AEROSOLS}:${DOCKER_AEROSOLS} -v ${LOCAL_IRBM}:${DOCKER_IRBM} -v ${LOCAL_SUITE}:${DOCKER_SUITE} -e ${SUITE_NAME} -e ${COLD_START} -p 5800:5800 cylc