UPDATE A
SET
DT_NOTIFIC = iif(DT_NOTIFIC = '', NULL, DT_NOTIFIC),
DT_INVEST = iif(DT_INVEST = '', NULL, DT_INVEST),
ID_OCUPA_N = IIF(ID_OCUPA_N = '', NULL, ID_OCUPA_N),
FEBRE = IIF(FEBRE = '', NULL, FEBRE),
HOSPITALIZ = IIF(HOSPITALIZ = '', NULL, HOSPITALIZ),
UF = IIF(UF = '', NULL, UF),
ID_MUNICIP = IIF(ID_MUNICIP = '', NULL, ID_MUNICIP),
ID_REGIONA = IIF(ID_REGIONA = '', NULL, ID_REGIONA),
ID_UNIDADE = IIF(ID_UNIDADE = '', NULL, ID_UNIDADE),
MUNICIPIO = IIF(MUNICIPIO = '', NULL, MUNICIPIO),
COUFINF = IIF(COUFINF = '', NULL, COUFINF),
COPAISINF = IIF(COPAISINF = '', NULL, COPAISINF),
COMUNINF = IIF(COMUNINF = '', NULL, COMUNINF),
CLASSI_FIN = IIF(CLASSI_FIN = '', NULL, CLASSI_FIN),
CRITERIO = IIF(CRITERIO = '', NULL, CRITERIO),
DT_INTERNA = IIF(DT_INTERNA = '', NULL, DT_INTERNA),
DT_OBITO = IIF(DT_OBITO = '', NULL, DT_OBITO),
DT_ALRM = IIF(DT_ALRM = '', NULL, DT_ALRM),
DT_GRAV = IIF(DT_GRAV = '', NULL, DT_GRAV),
DT_SORO = IIF(DT_SORO = '', NULL, DT_SORO),
DT_ENCERRA = IIF(DT_ENCERRA = '', NULL, DT_ENCERRA),
RESUL_SORO = IIF(RESUL_SORO = '', NULL, RESUL_SORO),
DT_NS1 = IIF(DT_NS1 = '', NULL, DT_NS1),
RESUL_NS1 = IIF(RESUL_NS1 = '', NULL, RESUL_NS1),
DT_PCR = IIF(DT_PCR = '', NULL, DT_PCR),
RESUL_PCR_ = IIF(RESUL_PCR_ = '', NULL, RESUL_PCR_),
TPAUTOCTO = IIF(TPAUTOCTO = '', NULL, TPAUTOCTO),
VOMITO = IIF(VOMITO = '', NULL, VOMITO),
NAUSEA = IIF(NAUSEA = '', NULL, NAUSEA),
SANGRAM = IIF(SANGRAM = '', NULL, SANGRAM)
FROM db_dengue.SINAN.Importacao A

