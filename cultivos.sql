USE master;  
GO  
DROP DATABASE Cultivos;  
GO
CREATE DATABASE Cultivos;
GO
USE Cultivos;
GO

-- ----------------------------
-- Table structure for __cultivosMigrationsHistory
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[__cultivosMigrationsHistory]') AND type IN ('U'))
	DROP TABLE [dbo].[__cultivosMigrationsHistory]
GO

CREATE TABLE [dbo].[__cultivosMigrationsHistory] (
  [MigrationId] nvarchar(150) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [ProductVersion] nvarchar(32) COLLATE Modern_Spanish_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[__cultivosMigrationsHistory] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of __cultivosMigrationsHistory
-- ----------------------------
INSERT INTO [dbo].[__cultivosMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210624174208_Creacion-Inicial-DB', N'5.0.7')
GO

INSERT INTO [dbo].[__cultivosMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210624203149_Creacion_y_gestion_de_credenciales_en_la_DB', N'5.0.7')
GO

INSERT INTO [dbo].[__cultivosMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210624210702_Creacion_Poligonos', N'5.0.7')
GO

INSERT INTO [dbo].[__cultivosMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210818205456_Creacion_tabla_coordenadas', N'5.0.7')
GO

INSERT INTO [dbo].[__cultivosMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210818211858_Modificacion_tabla_coordenadas', N'5.0.7')
GO

INSERT INTO [dbo].[__cultivosMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210818223955_Creacion_tabla_historico_busqueda', N'5.0.7')
GO

INSERT INTO [dbo].[__cultivosMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210821230017_Crear_Tabla_Rol', N'5.0.7')
GO

INSERT INTO [dbo].[__cultivosMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210821230237_Crear_Tabla_Rol_2', N'5.0.7')
GO

INSERT INTO [dbo].[__cultivosMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220111234430_Actualizacion', N'5.0.7')
GO

INSERT INTO [dbo].[__cultivosMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220112005902_ActualizacionPoligono', N'5.0.7')
GO

INSERT INTO [dbo].[__cultivosMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220120174836_Datos', N'5.0.7')
GO

INSERT INTO [dbo].[__cultivosMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220120180846_DatosPoligono', N'5.0.7')
GO


-- ----------------------------
-- Table structure for Busquedas
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Busquedas]') AND type IN ('U'))
	DROP TABLE [dbo].[Busquedas]
GO

CREATE TABLE [dbo].[Busquedas] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [Detalle] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL,
  [UsuarioId] bigint  NOT NULL,
  [Estado] int  NOT NULL,
  [FechaCreacion] datetimeoffset(7)  NOT NULL,
  [FechaFin] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL,
  [FechaInicio] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Busquedas] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Busquedas
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Busquedas] ON
GO

INSERT INTO [dbo].[Busquedas] ([Id], [Detalle], [UsuarioId], [Estado], [FechaCreacion], [FechaFin], [FechaInicio]) VALUES (N'108', N'[{"dt":1642291200,"type":"s2","zoom":13,"dc":100,"cl":24.46,"data":{"std":0.052630038273135185,"p75":0.661571343075371,"min":0.5299145299145299,"max":0.7235772357723578,"median":0.6369536996971008,"p25":0.5769863069215232,"num":39,"mean":0.6217247650512762}},{"dt":1641859200,"type":"s2","zoom":13,"dc":100,"cl":90.99,"data":{"std":0.053219727509372636,"p75":0.22806632003927108,"min":0.122398414271556,"max":0.3193386587404793,"median":0.1730181914752357,"p25":0.1460439132794658,"num":39,"mean":0.18915278006283842}},{"dt":1641427200,"type":"s2","zoom":13,"dc":100,"cl":48.45,"data":{"std":0.010039980611929638,"p75":0.040767550060208615,"min":0.014533622559652928,"max":0.05825934806558227,"median":0.034031413612565446,"p25":0.026503737877695256,"num":39,"mean":0.03362613137985698}},{"dt":1640995200,"type":"s2","zoom":13,"dc":100,"cl":10.29,"data":{"std":0.07708867207013223,"p75":0.6994186554038115,"min":0.4510226049515608,"max":0.7326429748176041,"median":0.6604123233727125,"p25":0.5961193012754721,"num":39,"mean":0.6344285226017274}}]', N'1', N'1', N'2022-01-20 12:54:26.8272927', N'1642654800', N'1641013200')
GO

INSERT INTO [dbo].[Busquedas] ([Id], [Detalle], [UsuarioId], [Estado], [FechaCreacion], [FechaFin], [FechaInicio]) VALUES (N'109', N'[{"dt":1642291200,"type":"s2","zoom":13,"dc":100,"cl":24.46,"data":{"mean":0.6217247650512762,"num":39,"p25":0.5769863069215232,"median":0.6369536996971008,"max":0.7235772357723578,"min":0.5299145299145299,"p75":0.661571343075371,"std":0.052630038273135185}},{"dt":1641859200,"type":"s2","zoom":13,"dc":100,"cl":90.99,"data":{"mean":0.18915278006283842,"num":39,"p25":0.1460439132794658,"median":0.1730181914752357,"max":0.3193386587404793,"min":0.122398414271556,"p75":0.22806632003927108,"std":0.053219727509372636}},{"dt":1641427200,"type":"s2","zoom":13,"dc":100,"cl":48.45,"data":{"mean":0.03362613137985698,"num":39,"p25":0.026503737877695256,"median":0.034031413612565446,"max":0.05825934806558227,"min":0.014533622559652928,"p75":0.040767550060208615,"std":0.010039980611929638}},{"dt":1640995200,"type":"s2","zoom":13,"dc":100,"cl":10.29,"data":{"std":0.07708867207013223,"p75":0.6994186554038115,"min":0.4510226049515608,"max":0.7326429748176041,"median":0.6604123233727125,"p25":0.5961193012754721,"num":39,"mean":0.6344285226017274}}]', N'1', N'1', N'2022-01-20 12:54:58.1943554', N'1642654800', N'1641013200')
GO

INSERT INTO [dbo].[Busquedas] ([Id], [Detalle], [UsuarioId], [Estado], [FechaCreacion], [FechaFin], [FechaInicio]) VALUES (N'110', N'[{"dt":1642291200,"type":"s2","zoom":13,"dc":100,"cl":24.46,"data":{"mean":0.6217247650512762,"num":39,"p25":0.5769863069215232,"median":0.6369536996971008,"max":0.7235772357723578,"min":0.5299145299145299,"p75":0.661571343075371,"std":0.052630038273135185}},{"dt":1641859200,"type":"s2","zoom":13,"dc":100,"cl":90.99,"data":{"mean":0.18915278006283842,"num":39,"p25":0.1460439132794658,"median":0.1730181914752357,"max":0.3193386587404793,"min":0.122398414271556,"p75":0.22806632003927108,"std":0.053219727509372636}},{"dt":1641427200,"type":"s2","zoom":13,"dc":100,"cl":48.45,"data":{"mean":0.03362613137985698,"num":39,"p25":0.026503737877695256,"median":0.034031413612565446,"max":0.05825934806558227,"min":0.014533622559652928,"p75":0.040767550060208615,"std":0.010039980611929638}},{"dt":1640995200,"type":"s2","zoom":13,"dc":100,"cl":10.29,"data":{"std":0.07708867207013223,"p75":0.6994186554038115,"min":0.4510226049515608,"max":0.7326429748176041,"median":0.6604123233727125,"p25":0.5961193012754721,"num":39,"mean":0.6344285226017274}}]', N'1', N'1', N'2022-01-20 12:57:48.5349876', N'1642654800', N'1641013200')
GO

INSERT INTO [dbo].[Busquedas] ([Id], [Detalle], [UsuarioId], [Estado], [FechaCreacion], [FechaFin], [FechaInicio]) VALUES (N'111', N'[{"dt":1640563200,"type":"s2","zoom":13,"dc":100,"cl":20.94,"data":{"std":0.03344321878859115,"p75":0.5426278836509528,"min":0.43506663182649596,"max":0.6259477674810446,"median":0.5263757115749526,"p25":0.5128939828080229,"num":77,"mean":0.5298276099381642}},{"dt":1640131200,"type":"s2","zoom":13,"dc":100,"cl":100,"data":{"std":0.008967273542830497,"p75":0.022839072382290933,"min":-0.006034320196115406,"max":0.046929996089166995,"median":0.017094766371526255,"p25":0.012911438443353337,"num":77,"mean":0.017651972267119165}},{"dt":1639958400,"type":"l8","zoom":13,"dc":100,"cl":100,"data":{"std":0.021535985362390472,"p75":0.16020622493794157,"min":0.10526315789473684,"max":0.1884916437486778,"median":0.14266577361018085,"p25":0.12734605242748565,"num":77,"mean":0.14377200036480386}},{"dt":1639699200,"type":"s2","zoom":13,"dc":100,"cl":99.93,"data":{"std":0.0058800376473939564,"p75":0.02949018340470227,"min":0.00827250608272506,"max":0.035769561478933794,"median":0.02672121159369832,"p25":0.02299662506867593,"num":77,"mean":0.025629277050696876}},{"dt":1639267200,"type":"s2","zoom":13,"dc":100,"cl":100,"data":{"std":0.002407729675046218,"p75":0.004847373247740076,"min":-0.00228743219397425,"max":0.008552631578947369,"median":0.003730610642057726,"p25":0.0017794767020365121,"num":77,"mean":0.0032902409830437265}},{"dt":1638835200,"type":"s2","zoom":13,"dc":100,"cl":94.25,"data":{"std":0.012206611766289416,"p75":0.08247576435495899,"min":0.048187241854061494,"max":0.11065182829888712,"median":0.07188454066056064,"p25":0.0680424704650815,"num":77,"mean":0.07576749552849706}},{"dt":1638576000,"type":"l8","zoom":13,"dc":100,"cl":20.88,"data":{"std":0.03524252608086127,"p75":0.6199559794570799,"min":0.421591804570528,"max":0.6865353911655135,"median":0.6095736724008975,"p25":0.6012784658409908,"num":77,"mean":0.6121791991281803}},{"dt":1638403200,"type":"s2","zoom":13,"dc":100,"cl":17.24,"data":{"std":0.08068666457922696,"p75":0.5862639635912288,"min":0.2520775623268698,"max":0.6920574681485497,"median":0.5660834454912517,"p25":0.5358758888170653,"num":77,"mean":0.5475094794123676}}]', N'1', N'1', N'2022-01-20 13:38:19.3798122', N'1640926800', N'1638334800')
GO

INSERT INTO [dbo].[Busquedas] ([Id], [Detalle], [UsuarioId], [Estado], [FechaCreacion], [FechaFin], [FechaInicio]) VALUES (N'112', N'[{"dt":1642291200,"type":"s2","zoom":13,"dc":100,"cl":24.46,"data":{"mean":0.6217247650512762,"num":39,"p25":0.5769863069215232,"median":0.6369536996971008,"max":0.7235772357723578,"min":0.5299145299145299,"p75":0.661571343075371,"std":0.052630038273135185}},{"dt":1641859200,"type":"s2","zoom":13,"dc":100,"cl":90.99,"data":{"mean":0.18915278006283842,"num":39,"p25":0.1460439132794658,"median":0.1730181914752357,"max":0.3193386587404793,"min":0.122398414271556,"p75":0.22806632003927108,"std":0.053219727509372636}},{"dt":1641427200,"type":"s2","zoom":13,"dc":100,"cl":48.45,"data":{"mean":0.03362613137985698,"num":39,"p25":0.026503737877695256,"median":0.034031413612565446,"max":0.05825934806558227,"min":0.014533622559652928,"p75":0.040767550060208615,"std":0.010039980611929638}},{"dt":1640995200,"type":"s2","zoom":13,"dc":100,"cl":10.29,"data":{"std":0.07708867207013223,"p75":0.6994186554038115,"min":0.4510226049515608,"max":0.7326429748176041,"median":0.6604123233727125,"p25":0.5961193012754721,"num":39,"mean":0.6344285226017274}}]', N'1', N'1', N'2022-01-20 13:54:08.4290071', N'1642654800', N'1641013200')
GO

INSERT INTO [dbo].[Busquedas] ([Id], [Detalle], [UsuarioId], [Estado], [FechaCreacion], [FechaFin], [FechaInicio]) VALUES (N'113', N'[{"dt":1642291200,"type":"s2","zoom":13,"dc":100,"cl":24.46,"data":{"mean":0.6217247650512762,"num":39,"p25":0.5769863069215232,"median":0.6369536996971008,"max":0.7235772357723578,"min":0.5299145299145299,"p75":0.661571343075371,"std":0.052630038273135185}},{"dt":1641859200,"type":"s2","zoom":13,"dc":100,"cl":90.99,"data":{"mean":0.18915278006283842,"num":39,"p25":0.1460439132794658,"median":0.1730181914752357,"max":0.3193386587404793,"min":0.122398414271556,"p75":0.22806632003927108,"std":0.053219727509372636}},{"dt":1641427200,"type":"s2","zoom":13,"dc":100,"cl":48.45,"data":{"mean":0.03362613137985698,"num":39,"p25":0.026503737877695256,"median":0.034031413612565446,"max":0.05825934806558227,"min":0.014533622559652928,"p75":0.040767550060208615,"std":0.010039980611929638}},{"dt":1640995200,"type":"s2","zoom":13,"dc":100,"cl":10.29,"data":{"std":0.07708867207013223,"p75":0.6994186554038115,"min":0.4510226049515608,"max":0.7326429748176041,"median":0.6604123233727125,"p25":0.5961193012754721,"num":39,"mean":0.6344285226017274}}]', N'1', N'1', N'2022-01-20 13:55:05.0763587', N'1642654800', N'1641013200')
GO

INSERT INTO [dbo].[Busquedas] ([Id], [Detalle], [UsuarioId], [Estado], [FechaCreacion], [FechaFin], [FechaInicio]) VALUES (N'114', N'[{"dt":1642291200,"type":"s2","zoom":13,"dc":100,"cl":24.46,"data":{"mean":0.6217247650512762,"num":39,"p25":0.5769863069215232,"median":0.6369536996971008,"max":0.7235772357723578,"min":0.5299145299145299,"p75":0.661571343075371,"std":0.052630038273135185}},{"dt":1641859200,"type":"s2","zoom":13,"dc":100,"cl":90.99,"data":{"mean":0.18915278006283842,"num":39,"p25":0.1460439132794658,"median":0.1730181914752357,"max":0.3193386587404793,"min":0.122398414271556,"p75":0.22806632003927108,"std":0.053219727509372636}},{"dt":1641427200,"type":"s2","zoom":13,"dc":100,"cl":48.45,"data":{"mean":0.03362613137985698,"num":39,"p25":0.026503737877695256,"median":0.034031413612565446,"max":0.05825934806558227,"min":0.014533622559652928,"p75":0.040767550060208615,"std":0.010039980611929638}},{"dt":1640995200,"type":"s2","zoom":13,"dc":100,"cl":10.29,"data":{"std":0.07708867207013223,"p75":0.6994186554038115,"min":0.4510226049515608,"max":0.7326429748176041,"median":0.6604123233727125,"p25":0.5961193012754721,"num":39,"mean":0.6344285226017274}}]', N'1', N'1', N'2022-01-20 13:55:17.3011245', N'1642654800', N'1641013200')
GO

INSERT INTO [dbo].[Busquedas] ([Id], [Detalle], [UsuarioId], [Estado], [FechaCreacion], [FechaFin], [FechaInicio]) VALUES (N'115', N'[{"dt":1642291200,"type":"s2","zoom":13,"dc":100,"cl":24.46,"data":{"mean":0.6217247650512762,"num":39,"p25":0.5769863069215232,"median":0.6369536996971008,"max":0.7235772357723578,"min":0.5299145299145299,"p75":0.661571343075371,"std":0.052630038273135185}},{"dt":1641859200,"type":"s2","zoom":13,"dc":100,"cl":90.99,"data":{"mean":0.18915278006283842,"num":39,"p25":0.1460439132794658,"median":0.1730181914752357,"max":0.3193386587404793,"min":0.122398414271556,"p75":0.22806632003927108,"std":0.053219727509372636}},{"dt":1641427200,"type":"s2","zoom":13,"dc":100,"cl":48.45,"data":{"mean":0.03362613137985698,"num":39,"p25":0.026503737877695256,"median":0.034031413612565446,"max":0.05825934806558227,"min":0.014533622559652928,"p75":0.040767550060208615,"std":0.010039980611929638}},{"dt":1640995200,"type":"s2","zoom":13,"dc":100,"cl":10.29,"data":{"std":0.07708867207013223,"p75":0.6994186554038115,"min":0.4510226049515608,"max":0.7326429748176041,"median":0.6604123233727125,"p25":0.5961193012754721,"num":39,"mean":0.6344285226017274}}]', N'1', N'1', N'2022-01-20 13:56:01.4829354', N'1642654800', N'1641013200')
GO

INSERT INTO [dbo].[Busquedas] ([Id], [Detalle], [UsuarioId], [Estado], [FechaCreacion], [FechaFin], [FechaInicio]) VALUES (N'116', N'[{"dt":1642291200,"type":"s2","zoom":13,"dc":100,"cl":24.46,"data":{"mean":0.6217247650512762,"num":39,"p25":0.5769863069215232,"median":0.6369536996971008,"max":0.7235772357723578,"min":0.5299145299145299,"p75":0.661571343075371,"std":0.052630038273135185}},{"dt":1641859200,"type":"s2","zoom":13,"dc":100,"cl":90.99,"data":{"mean":0.18915278006283842,"num":39,"p25":0.1460439132794658,"median":0.1730181914752357,"max":0.3193386587404793,"min":0.122398414271556,"p75":0.22806632003927108,"std":0.053219727509372636}},{"dt":1641427200,"type":"s2","zoom":13,"dc":100,"cl":48.45,"data":{"mean":0.03362613137985698,"num":39,"p25":0.026503737877695256,"median":0.034031413612565446,"max":0.05825934806558227,"min":0.014533622559652928,"p75":0.040767550060208615,"std":0.010039980611929638}},{"dt":1640995200,"type":"s2","zoom":13,"dc":100,"cl":10.29,"data":{"std":0.07708867207013223,"p75":0.6994186554038115,"min":0.4510226049515608,"max":0.7326429748176041,"median":0.6604123233727125,"p25":0.5961193012754721,"num":39,"mean":0.6344285226017274}}]', N'1', N'1', N'2022-01-20 13:57:09.4684813', N'1642654800', N'1641013200')
GO

SET IDENTITY_INSERT [dbo].[Busquedas] OFF
GO


-- ----------------------------
-- Table structure for Coordenadas
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Coordenadas]') AND type IN ('U'))
	DROP TABLE [dbo].[Coordenadas]
GO

CREATE TABLE [dbo].[Coordenadas] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [PoligonoId] bigint  NOT NULL,
  [Estado] int  NOT NULL,
  [FechaCreacion] datetimeoffset(7)  NOT NULL,
  [Trama] varchar(max) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Coordenadas] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Coordenadas
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Coordenadas] ON
GO

INSERT INTO [dbo].[Coordenadas] ([Id], [PoligonoId], [Estado], [FechaCreacion], [Trama]) VALUES (N'11', N'12', N'1', N'2022-01-20 12:53:11.7157481', N'[
  [
    [
      -78.571258,
      -0.26067
    ],
    [
      -78.570817,
      -0.261256
    ],
    [
      -78.569637,
      -0.260386
    ],
    [
      -78.569962,
      -0.259707
    ],
    [
      -78.571258,
      -0.26067
    ]
  ]
]')
GO

INSERT INTO [dbo].[Coordenadas] ([Id], [PoligonoId], [Estado], [FechaCreacion], [Trama]) VALUES (N'12', N'13', N'1', N'2022-01-20 13:38:05.0603219', N'[
  [
    [
      -78.517955,
      -0.231225
    ],
    [
      -78.51898,
      -0.232074
    ],
    [
      -78.518261,
      -0.233086
    ],
    [
      -78.51672,
      -0.231643
    ],
    [
      -78.517635,
      -0.231003
    ],
    [
      -78.517955,
      -0.231225
    ]
  ]
]')
GO

SET IDENTITY_INSERT [dbo].[Coordenadas] OFF
GO


-- ----------------------------
-- Table structure for Credenciales
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Credenciales]') AND type IN ('U'))
	DROP TABLE [dbo].[Credenciales]
GO

CREATE TABLE [dbo].[Credenciales] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [Url] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL,
  [Metodo] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL,
  [Tipo] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL,
  [Usuario] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL,
  [Contrasena] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL,
  [Nombre] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL,
  [Modo] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL,
  [Estado] int  NOT NULL,
  [FechaCreacion] datetimeoffset(7)  NOT NULL
)
GO

ALTER TABLE [dbo].[Credenciales] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Credenciales
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Credenciales] ON
GO

INSERT INTO [dbo].[Credenciales] ([Id], [Url], [Metodo], [Tipo], [Usuario], [Contrasena], [Nombre], [Modo], [Estado], [FechaCreacion]) VALUES (N'1', N'https://vt.eos.com/api/', N'data/feature/', N'POST', N'', N'ApiKey apk.6596b547d0d3c3f6494b17cf4a0b111287b3de70ed17bf9c85c78d73bf585579', N'GENERADOR-POLIGONOS', N'DESARROLLO', N'1', N'2021-06-24 16:17:41.0000000')
GO

INSERT INTO [dbo].[Credenciales] ([Id], [Url], [Metodo], [Tipo], [Usuario], [Contrasena], [Nombre], [Modo], [Estado], [FechaCreacion]) VALUES (N'2', N'https://hlv.eos.com/api/', N'v1/search?api_key=', N'POST-FROM', N'', N'apk.6596b547d0d3c3f6494b17cf4a0b111287b3de70ed17bf9c85c78d73bf585579', N'GENERADOR-NDVIS', N'DESARROLLO', N'1', N'2021-07-13 13:40:19.0000000')
GO

INSERT INTO [dbo].[Credenciales] ([Id], [Url], [Metodo], [Tipo], [Usuario], [Contrasena], [Nombre], [Modo], [Estado], [FechaCreacion]) VALUES (N'3', N'https://gate.eos.com/api/', N'gdw/api?api_key=', N'POST-C', N' ', N'apk.6596b547d0d3c3f6494b17cf4a0b111287b3de70ed17bf9c85c78d73bf585579', N'GENERAR-ESTADITICA', N'DESARROLLO', N'1', N'2021-08-19 16:15:06.0000000')
GO

INSERT INTO [dbo].[Credenciales] ([Id], [Url], [Metodo], [Tipo], [Usuario], [Contrasena], [Nombre], [Modo], [Estado], [FechaCreacion]) VALUES (N'4', N'https://gate.eos.com/api/gdw/api/', N'api_key=', N'GET-C', N'', N'apk.6596b547d0d3c3f6494b17cf4a0b111287b3de70ed17bf9c85c78d73bf585579', N'VERIFICAR-ESTADISTICA', N'DESARROLLO', N'1', N'2021-08-19 16:21:16.0000000')
GO

INSERT INTO [dbo].[Credenciales] ([Id], [Url], [Metodo], [Tipo], [Usuario], [Contrasena], [Nombre], [Modo], [Estado], [FechaCreacion]) VALUES (N'10002', N'http://api.agromonitoring.com/agro/1.0', N'/polygons?appid=', N'POST-C', N'', N'05f7471585e37d563dd5b7c17b57805d', N'GENERAR-POLIGONOS-AGRO', N'DESARROLLO', N'1', N'2022-01-11 17:36:08.0000000')
GO

INSERT INTO [dbo].[Credenciales] ([Id], [Url], [Metodo], [Tipo], [Usuario], [Contrasena], [Nombre], [Modo], [Estado], [FechaCreacion]) VALUES (N'10005', N'https://api.agromonitoring.com/agro/1.0', N'/ndvi/history?', N'GET', N'', N'05f7471585e37d563dd5b7c17b57805d', N'GENERAR-HISTORIAL-NDVI', N'DESARROLLO', N'1', N'2022-01-12 00:15:54.0000000')
GO

INSERT INTO [dbo].[Credenciales] ([Id], [Url], [Metodo], [Tipo], [Usuario], [Contrasena], [Nombre], [Modo], [Estado], [FechaCreacion]) VALUES (N'10007', N'http://api.agromonitoring.com/agro/1.0', N'/image/search?', N'GET', N'', N'05f7471585e37d563dd5b7c17b57805d', N'GENERAR-IMAGENES', N'DESARROLLO', N'1', N'2022-01-12 00:25:30.0000000')
GO

SET IDENTITY_INSERT [dbo].[Credenciales] OFF
GO


-- ----------------------------
-- Table structure for Historial
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Historial]') AND type IN ('U'))
	DROP TABLE [dbo].[Historial]
GO

CREATE TABLE [dbo].[Historial] (
  [Id] uniqueidentifier  NOT NULL,
  [PoligonoId] bigint  NOT NULL,
  [BusquedaId] bigint  NOT NULL,
  [UsuarioId] bigint  NOT NULL,
  [Estado] int  NOT NULL,
  [FechaCreacion] datetimeoffset(7)  NOT NULL
)
GO

ALTER TABLE [dbo].[Historial] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Historial
-- ----------------------------
INSERT INTO [dbo].[Historial] ([Id], [PoligonoId], [BusquedaId], [UsuarioId], [Estado], [FechaCreacion]) VALUES (N'FE8857AC-B65D-406E-8E7F-0F3C962EAAF5', N'0', N'0', N'0', N'1', N'2022-01-20 13:43:52.4576020')
GO

INSERT INTO [dbo].[Historial] ([Id], [PoligonoId], [BusquedaId], [UsuarioId], [Estado], [FechaCreacion]) VALUES (N'402673A1-9199-4B25-BB1A-2286F9AFCABB', N'0', N'109', N'1', N'1', N'2022-01-20 12:54:43.5383960')
GO

INSERT INTO [dbo].[Historial] ([Id], [PoligonoId], [BusquedaId], [UsuarioId], [Estado], [FechaCreacion]) VALUES (N'C653F44E-F459-4FDF-A522-3B4FAB9A0738', N'0', N'110', N'1', N'1', N'2022-01-20 12:56:29.1537468')
GO

INSERT INTO [dbo].[Historial] ([Id], [PoligonoId], [BusquedaId], [UsuarioId], [Estado], [FechaCreacion]) VALUES (N'6C3D883E-4D56-4ACF-B221-52E46804EEF2', N'0', N'112', N'1', N'1', N'2022-01-20 13:54:02.3274420')
GO

INSERT INTO [dbo].[Historial] ([Id], [PoligonoId], [BusquedaId], [UsuarioId], [Estado], [FechaCreacion]) VALUES (N'438CE135-67F4-4D0D-90CA-550FE40046B2', N'0', N'0', N'0', N'1', N'2022-01-20 13:39:38.0091733')
GO

INSERT INTO [dbo].[Historial] ([Id], [PoligonoId], [BusquedaId], [UsuarioId], [Estado], [FechaCreacion]) VALUES (N'613CEC62-51A4-4283-89EB-5C769DB24F5C', N'0', N'114', N'1', N'1', N'2022-01-20 13:54:57.0594821')
GO

INSERT INTO [dbo].[Historial] ([Id], [PoligonoId], [BusquedaId], [UsuarioId], [Estado], [FechaCreacion]) VALUES (N'8FFE205B-64F9-4E55-8B9F-5D1FBE46A121', N'0', N'115', N'1', N'1', N'2022-01-20 13:55:49.0381485')
GO

INSERT INTO [dbo].[Historial] ([Id], [PoligonoId], [BusquedaId], [UsuarioId], [Estado], [FechaCreacion]) VALUES (N'772F5F04-B110-4D38-87B5-6F95E2AC72C2', N'0', N'0', N'0', N'1', N'2022-01-20 12:49:21.7584814')
GO

INSERT INTO [dbo].[Historial] ([Id], [PoligonoId], [BusquedaId], [UsuarioId], [Estado], [FechaCreacion]) VALUES (N'EA31C3CA-0B8F-4C1E-B3CF-7BE43B478AFF', N'13', N'111', N'1', N'1', N'2022-01-20 13:36:03.5281052')
GO

INSERT INTO [dbo].[Historial] ([Id], [PoligonoId], [BusquedaId], [UsuarioId], [Estado], [FechaCreacion]) VALUES (N'62E02BED-C9B6-46E6-B0D5-96B091ED6C6E', N'0', N'0', N'0', N'1', N'2022-01-20 13:42:09.0151100')
GO

INSERT INTO [dbo].[Historial] ([Id], [PoligonoId], [BusquedaId], [UsuarioId], [Estado], [FechaCreacion]) VALUES (N'ED986DC6-3A33-41A2-962B-C3BA4386D85C', N'0', N'116', N'1', N'1', N'2022-01-20 13:57:02.4735682')
GO

INSERT INTO [dbo].[Historial] ([Id], [PoligonoId], [BusquedaId], [UsuarioId], [Estado], [FechaCreacion]) VALUES (N'96048BA3-1C9D-4A0F-86A7-D59E17A56CB9', N'0', N'0', N'0', N'1', N'2022-01-20 13:53:12.2722832')
GO

INSERT INTO [dbo].[Historial] ([Id], [PoligonoId], [BusquedaId], [UsuarioId], [Estado], [FechaCreacion]) VALUES (N'C778A257-4941-4F7B-A3D1-EB2806B5B067', N'0', N'0', N'0', N'1', N'2022-01-20 13:03:45.2282628')
GO

INSERT INTO [dbo].[Historial] ([Id], [PoligonoId], [BusquedaId], [UsuarioId], [Estado], [FechaCreacion]) VALUES (N'6D06072D-17B0-4BC9-BF09-F235CA4405DF', N'0', N'0', N'0', N'1', N'2022-01-20 13:43:05.9764758')
GO

INSERT INTO [dbo].[Historial] ([Id], [PoligonoId], [BusquedaId], [UsuarioId], [Estado], [FechaCreacion]) VALUES (N'3EB1D569-80C8-4D42-B47E-FA041EBA7485', N'12', N'108', N'1', N'1', N'2022-01-20 12:49:55.7300895')
GO


-- ----------------------------
-- Table structure for Poligonos
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Poligonos]') AND type IN ('U'))
	DROP TABLE [dbo].[Poligonos]
GO

CREATE TABLE [dbo].[Poligonos] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [Tipo] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL,
  [ResultadoId] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL,
  [UsuarioId] bigint  NOT NULL,
  [Estado] int  NOT NULL,
  [FechaCreacion] datetimeoffset(7)  NOT NULL,
  [Trama] varchar(max) COLLATE Modern_Spanish_CI_AS  NULL,
  [CoordenadasIniciales] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL,
  [FechaFin] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL,
  [FechaInicio] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Poligonos] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Poligonos
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Poligonos] ON
GO

INSERT INTO [dbo].[Poligonos] ([Id], [Tipo], [ResultadoId], [UsuarioId], [Estado], [FechaCreacion], [Trama], [CoordenadasIniciales], [FechaFin], [FechaInicio]) VALUES (N'12', N'Poligono_Oats_1|Oats', N'61e9a188d80213d16b0e2955', N'1', N'1', N'2022-01-20 12:53:11.6540056', N'{"id":"61e9a188d80213d16b0e2955","geo_json":{"type":"Feature","properties":{},"geometry":{"type":"Polygon","coordinates":[[[-78.571258,-0.26067],[-78.570817,-0.261256],[-78.569637,-0.260386],[-78.569962,-0.259707],[-78.571258,-0.26067]]]}},"name":"Poligono_Oats_1","center":[-78.5704185,-0.26050475],"area":1.4053,"user_id":"61ddb8985c29110007606ac3","created_at":1642701192}', N'[[-78.57125780834866,-0.2606695939663126],[-78.57081729474304,-0.26125627305000876],[-78.5696372614054,-0.2603860074809745],[-78.56996177057323,-0.2597074953002476],[-78.57125780834866,-0.2606695939663126]]', N'1642654800', N'1641013200')
GO

INSERT INTO [dbo].[Poligonos] ([Id], [Tipo], [ResultadoId], [UsuarioId], [Estado], [FechaCreacion], [Trama], [CoordenadasIniciales], [FechaFin], [FechaInicio]) VALUES (N'13', N'Poligono_Tobacco_2|Tobacco', N'61e9ac0dd802137d690e295c', N'1', N'1', N'2022-01-20 13:38:05.0091246', N'{"id":"61e9ac0dd802137d690e295c","geo_json":{"type":"Feature","properties":{},"geometry":{"type":"Polygon","coordinates":[[[-78.517955,-0.231225],[-78.51898,-0.232074],[-78.518261,-0.233086],[-78.51672,-0.231643],[-78.517635,-0.231003],[-78.517955,-0.231225]]]}},"name":"Poligono_Tobacco_2","center":[-78.51791019999999,-0.23180620000000002],"area":2.7769,"user_id":"61ddb8985c29110007606ac3","created_at":1642703885}', N'[[-78.517954549066,-0.231225009268897],[-78.51897979321706,-0.23207393060789627],[-78.51826146928926,-0.23308610598449775],[-78.51672033795391,-0.23164293978052797],[-78.51763456840709,-0.2310029836784082],[-78.517954549066,-0.231225009268897]]', N'1640926800', N'1638334800')
GO

SET IDENTITY_INSERT [dbo].[Poligonos] OFF
GO


-- ----------------------------
-- Table structure for Rol
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Rol]') AND type IN ('U'))
	DROP TABLE [dbo].[Rol]
GO

CREATE TABLE [dbo].[Rol] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [Nombre] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL,
  [Estado] int  NOT NULL,
  [FechaCreacion] datetimeoffset(7)  NOT NULL
)
GO

ALTER TABLE [dbo].[Rol] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Rol
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Rol] ON
GO

INSERT INTO [dbo].[Rol] ([Id], [Nombre], [Estado], [FechaCreacion]) VALUES (N'1', N'ADMINISTRADOR', N'1', N'2021-12-26 22:53:00.0000000')
GO

INSERT INTO [dbo].[Rol] ([Id], [Nombre], [Estado], [FechaCreacion]) VALUES (N'2', N'CONSULTOR', N'1', N'2021-12-26 22:53:08.0000000')
GO

SET IDENTITY_INSERT [dbo].[Rol] OFF
GO


-- ----------------------------
-- Table structure for Usuario
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Usuario]') AND type IN ('U'))
	DROP TABLE [dbo].[Usuario]
GO

CREATE TABLE [dbo].[Usuario] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [Nombre] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL,
  [Email] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL,
  [Contrasena] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL,
  [Estado] int  NOT NULL,
  [FechaCreacion] datetimeoffset(7)  NOT NULL,
  [RolId] bigint DEFAULT (CONVERT([bigint],(0))) NOT NULL
)
GO

ALTER TABLE [dbo].[Usuario] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Usuario
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Usuario] ON
GO

INSERT INTO [dbo].[Usuario] ([Id], [Nombre], [Email], [Contrasena], [Estado], [FechaCreacion], [RolId]) VALUES (N'1', N'Administrador', N'admin', N'12345', N'1', N'2021-12-26 22:51:55.2288758', N'2')
GO

SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO


-- ----------------------------
-- Primary Key structure for table __cultivosMigrationsHistory
-- ----------------------------
ALTER TABLE [dbo].[__cultivosMigrationsHistory] ADD CONSTRAINT [PK___cultivosMigrationsHistory] PRIMARY KEY CLUSTERED ([MigrationId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Busquedas
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Busquedas]', RESEED, 116)
GO


-- ----------------------------
-- Primary Key structure for table Busquedas
-- ----------------------------
ALTER TABLE [dbo].[Busquedas] ADD CONSTRAINT [PK_Busquedas] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Coordenadas
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Coordenadas]', RESEED, 12)
GO


-- ----------------------------
-- Indexes structure for table Coordenadas
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Coordenadas_PoligonoId]
ON [dbo].[Coordenadas] (
  [PoligonoId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Coordenadas
-- ----------------------------
ALTER TABLE [dbo].[Coordenadas] ADD CONSTRAINT [PK_Coordenadas] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Credenciales
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Credenciales]', RESEED, 10007)
GO


-- ----------------------------
-- Primary Key structure for table Credenciales
-- ----------------------------
ALTER TABLE [dbo].[Credenciales] ADD CONSTRAINT [PK_Credenciales] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Historial
-- ----------------------------
ALTER TABLE [dbo].[Historial] ADD CONSTRAINT [PK_Historial] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Poligonos
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Poligonos]', RESEED, 13)
GO


-- ----------------------------
-- Primary Key structure for table Poligonos
-- ----------------------------
ALTER TABLE [dbo].[Poligonos] ADD CONSTRAINT [PK_Poligonos] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Rol
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Rol]', RESEED, 10001)
GO


-- ----------------------------
-- Primary Key structure for table Rol
-- ----------------------------
ALTER TABLE [dbo].[Rol] ADD CONSTRAINT [PK_Rol] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Usuario
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Usuario]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table Usuario
-- ----------------------------
ALTER TABLE [dbo].[Usuario] ADD CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table Coordenadas
-- ----------------------------
ALTER TABLE [dbo].[Coordenadas] ADD CONSTRAINT [FK_Coordenadas_Poligonos_PoligonoId] FOREIGN KEY ([PoligonoId]) REFERENCES [dbo].[Poligonos] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

