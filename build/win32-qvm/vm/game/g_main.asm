data
align 4
LABELV gameCvarTable
byte 4 0
address $55
address $56
byte 4 68
byte 4 0
byte 4 0
skip 4
byte 4 0
address $57
address $58
byte 4 64
byte 4 0
byte 4 0
skip 4
address g_cheats
address $59
address $60
byte 4 0
byte 4 0
byte 4 0
byte 4 0
address g_mapname
address $61
address $60
byte 4 68
byte 4 0
byte 4 0
byte 4 0
address sv_fps
address $62
address $63
byte 4 1
byte 4 0
byte 4 0
byte 4 0
address g_gametype
address $64
address $65
byte 4 38
byte 4 0
byte 4 0
byte 4 0
address g_maxclients
address $66
address $67
byte 4 37
byte 4 0
byte 4 0
byte 4 0
address g_maxGameClients
address $68
address $65
byte 4 37
byte 4 0
byte 4 0
byte 4 0
address g_dmflags
address $69
address $65
byte 4 5
byte 4 0
byte 4 1
byte 4 0
address g_fraglimit
address $70
address $71
byte 4 1029
byte 4 0
byte 4 1
byte 4 0
address g_timelimit
address $72
address $65
byte 4 1029
byte 4 0
byte 4 1
byte 4 0
address g_capturelimit
address $73
address $67
byte 4 1029
byte 4 0
byte 4 1
byte 4 0
address g_synchronousClients
address $74
address $65
byte 4 8
byte 4 0
byte 4 0
byte 4 0
address g_friendlyFire
address $75
address $65
byte 4 1
byte 4 0
byte 4 1
byte 4 0
address g_autoJoin
address $76
address $77
byte 4 1
byte 4 0
byte 4 0
byte 4 0
address g_teamForceBalance
address $78
address $65
byte 4 1
byte 4 0
byte 4 0
byte 4 0
address g_warmup
address $79
address $71
byte 4 1
byte 4 0
byte 4 1
byte 4 0
address g_log
address $80
address $81
byte 4 1
byte 4 0
byte 4 0
byte 4 0
address g_logSync
address $82
address $65
byte 4 1
byte 4 0
byte 4 0
byte 4 0
address g_password
address $83
address $60
byte 4 2
byte 4 0
byte 4 0
byte 4 0
address g_banIPs
address $84
address $60
byte 4 1
byte 4 0
byte 4 0
byte 4 0
address g_filterBan
address $85
address $77
byte 4 1
byte 4 0
byte 4 0
byte 4 0
address g_needpass
address $86
address $65
byte 4 68
byte 4 0
byte 4 0
byte 4 0
address g_dedicated
address $87
address $65
byte 4 0
byte 4 0
byte 4 0
byte 4 0
address g_speed
address $88
address $89
byte 4 0
byte 4 0
byte 4 1
byte 4 0
address g_gravity
address $90
address $91
byte 4 0
byte 4 0
byte 4 1
byte 4 0
address g_knockback
address $92
address $93
byte 4 0
byte 4 0
byte 4 1
byte 4 0
address g_quadfactor
address $94
address $95
byte 4 0
byte 4 0
byte 4 1
byte 4 0
address g_weaponRespawn
address $96
address $97
byte 4 0
byte 4 0
byte 4 1
byte 4 0
address g_weaponTeamRespawn
address $98
address $63
byte 4 0
byte 4 0
byte 4 1
byte 4 0
address g_forcerespawn
address $99
address $71
byte 4 0
byte 4 0
byte 4 1
byte 4 0
address g_inactivity
address $100
address $65
byte 4 0
byte 4 0
byte 4 1
byte 4 0
address g_debugMove
address $101
address $65
byte 4 0
byte 4 0
byte 4 0
byte 4 0
address g_debugDamage
address $102
address $65
byte 4 0
byte 4 0
byte 4 0
byte 4 0
address g_debugAlloc
address $103
address $65
byte 4 0
byte 4 0
byte 4 0
byte 4 0
address g_motd
address $104
address $60
byte 4 0
byte 4 0
byte 4 0
byte 4 0
address g_blood
address $105
address $77
byte 4 0
byte 4 0
byte 4 0
byte 4 0
address g_podiumDist
address $106
address $107
byte 4 0
byte 4 0
byte 4 0
byte 4 0
address g_podiumDrop
address $108
address $109
byte 4 0
byte 4 0
byte 4 0
byte 4 0
address g_allowVote
address $110
address $77
byte 4 1
byte 4 0
byte 4 0
byte 4 0
address g_listEntity
address $111
address $65
byte 4 0
byte 4 0
byte 4 0
byte 4 0
address g_unlagged
address $112
address $77
byte 4 5
byte 4 0
byte 4 0
byte 4 0
address g_predictPVS
address $113
address $65
byte 4 1
byte 4 0
byte 4 0
byte 4 0
address g_smoothClients
address $114
address $77
byte 4 0
byte 4 0
byte 4 0
byte 4 0
address pmove_fixed
address $115
address $65
byte 4 8
byte 4 0
byte 4 0
byte 4 0
address pmove_msec
address $116
address $67
byte 4 8
byte 4 0
byte 4 0
byte 4 0
address g_rotation
address $117
address $65
byte 4 1
byte 4 0
byte 4 0
byte 4 0
export vmMain
code
proc vmMain 16 12
file "..\..\..\..\code\game\g_main.c"
line 64
;1:// Copyright (C) 1999-2000 Id Software, Inc.
;2://
;3:
;4:#include "g_local.h"
;5:
;6:void G_InitTeamBalance(void);
;7:void G_CheckTeamBalance(void);
;8:
;9:level_locals_t	level;
;10:
;11:typedef struct {
;12:	vmCvar_t	*vmCvar;
;13:	const char	*cvarName;
;14:	const char	*defaultString;
;15:	int			cvarFlags;
;16:	int			modificationCount;	// for tracking changes
;17:	qboolean	trackChange;		// track this variable, and announce if changed
;18:	qboolean	teamShader;			// track and if changed, update shader state
;19:} cvarTable_t;
;20:
;21:gentity_t		g_entities[MAX_GENTITIES];
;22:gclient_t		g_clients[MAX_CLIENTS];
;23:
;24:#define DECLARE_G_CVAR
;25:	#include "g_cvar.h"
;26:#undef DECLARE_G_CVAR
;27:
;28:static cvarTable_t gameCvarTable[] = {
;29:
;30:	// noset vars
;31:	{ NULL, "gamename", GAMEVERSION , CVAR_SERVERINFO | CVAR_ROM, 0, qfalse  },
;32:	{ NULL, "gamedate", __DATE__ , CVAR_ROM, 0, qfalse  },
;33:
;34:#define G_CVAR_LIST
;35:	#include "g_cvar.h"
;36:#undef G_CVAR_LIST
;37:
;38:};
;39:
;40:
;41:static void G_InitGame( int levelTime, int randomSeed, int restart );
;42:static void G_RunFrame( int levelTime );
;43:static void G_ShutdownGame( int restart );
;44:static void CheckExitRules( void );
;45:static void SendScoreboardMessageToAllClients( void );
;46:
;47:// extension interface
;48:#ifdef Q3_VM
;49:qboolean (*trap_GetValue)( char *value, int valueSize, const char *key );
;50:#else
;51:int dll_com_trapGetValue;
;52:#endif
;53:
;54:int	svf_self_portal2;
;55:
;56:/*
;57:================
;58:vmMain
;59:
;60:This is the only way control passes into the module.
;61:This must be the very first function compiled into the .q3vm file
;62:================
;63:*/
;64:DLLEXPORT intptr_t vmMain( int command, int arg0, int arg1, int arg2 ) {
line 65
;65:	switch ( command ) {
ADDRLP4 0
ADDRFP4 0
INDIRI4
ASGNI4
ADDRLP4 0
INDIRI4
CNSTI4 0
LTI4 $119
ADDRLP4 0
INDIRI4
CNSTI4 10
GTI4 $119
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 $132
ADDP4
INDIRP4
JUMPV
data
align 4
LABELV $132
address $121
address $122
address $123
address $127
address $125
address $126
address $128
address $124
address $129
address $130
address $131
code
LABELV $121
line 67
;66:	case GAME_INIT:
;67:		G_InitGame( arg0, arg1, arg2 );
ADDRFP4 4
INDIRI4
ARGI4
ADDRFP4 8
INDIRI4
ARGI4
ADDRFP4 12
INDIRI4
ARGI4
ADDRGP4 G_InitGame
CALLV
pop
line 68
;68:		return 0;
CNSTI4 0
RETI4
ADDRGP4 $118
JUMPV
LABELV $122
line 70
;69:	case GAME_SHUTDOWN:
;70:		G_ShutdownGame( arg0 );
ADDRFP4 4
INDIRI4
ARGI4
ADDRGP4 G_ShutdownGame
CALLV
pop
line 71
;71:		return 0;
CNSTI4 0
RETI4
ADDRGP4 $118
JUMPV
LABELV $123
line 73
;72:	case GAME_CLIENT_CONNECT:
;73:		return (intptr_t)ClientConnect( arg0, arg1, arg2 );
ADDRFP4 4
INDIRI4
ARGI4
ADDRFP4 8
INDIRI4
ARGI4
ADDRFP4 12
INDIRI4
ARGI4
ADDRLP4 4
ADDRGP4 ClientConnect
CALLP4
ASGNP4
ADDRLP4 4
INDIRP4
CVPU4 4
CVUI4 4
RETI4
ADDRGP4 $118
JUMPV
LABELV $124
line 75
;74:	case GAME_CLIENT_THINK:
;75:		ClientThink( arg0 );
ADDRFP4 4
INDIRI4
ARGI4
ADDRGP4 ClientThink
CALLV
pop
line 76
;76:		return 0;
CNSTI4 0
RETI4
ADDRGP4 $118
JUMPV
LABELV $125
line 78
;77:	case GAME_CLIENT_USERINFO_CHANGED:
;78:		ClientUserinfoChanged( arg0 );
ADDRFP4 4
INDIRI4
ARGI4
ADDRGP4 ClientUserinfoChanged
CALLI4
pop
line 79
;79:		return 0;
CNSTI4 0
RETI4
ADDRGP4 $118
JUMPV
LABELV $126
line 81
;80:	case GAME_CLIENT_DISCONNECT:
;81:		ClientDisconnect( arg0 );
ADDRFP4 4
INDIRI4
ARGI4
ADDRGP4 ClientDisconnect
CALLV
pop
line 82
;82:		return 0;
CNSTI4 0
RETI4
ADDRGP4 $118
JUMPV
LABELV $127
line 84
;83:	case GAME_CLIENT_BEGIN:
;84:		ClientBegin( arg0 );
ADDRFP4 4
INDIRI4
ARGI4
ADDRGP4 ClientBegin
CALLV
pop
line 85
;85:		return 0;
CNSTI4 0
RETI4
ADDRGP4 $118
JUMPV
LABELV $128
line 87
;86:	case GAME_CLIENT_COMMAND:
;87:		ClientCommand( arg0 );
ADDRFP4 4
INDIRI4
ARGI4
ADDRGP4 ClientCommand
CALLV
pop
line 88
;88:		return 0;
CNSTI4 0
RETI4
ADDRGP4 $118
JUMPV
LABELV $129
line 90
;89:	case GAME_RUN_FRAME:
;90:		G_RunFrame( arg0 );
ADDRFP4 4
INDIRI4
ARGI4
ADDRGP4 G_RunFrame
CALLV
pop
line 91
;91:		return 0;
CNSTI4 0
RETI4
ADDRGP4 $118
JUMPV
LABELV $130
line 93
;92:	case GAME_CONSOLE_COMMAND:
;93:		return ConsoleCommand();
ADDRLP4 8
ADDRGP4 ConsoleCommand
CALLI4
ASGNI4
ADDRLP4 8
INDIRI4
RETI4
ADDRGP4 $118
JUMPV
LABELV $131
line 95
;94:	case BOTAI_START_FRAME:
;95:		return BotAIStartFrame( arg0 );
ADDRFP4 4
INDIRI4
ARGI4
ADDRLP4 12
ADDRGP4 BotAIStartFrame
CALLI4
ASGNI4
ADDRLP4 12
INDIRI4
RETI4
ADDRGP4 $118
JUMPV
LABELV $119
line 98
;96:	}
;97:
;98:	return -1;
CNSTI4 -1
RETI4
LABELV $118
endproc vmMain 16 12
export G_Printf
proc G_Printf 8204 12
line 102
;99:}
;100:
;101:
;102:void QDECL G_Printf( const char *fmt, ... ) {
line 107
;103:	va_list		argptr;
;104:	char		text[BIG_INFO_STRING];
;105:	int			len;
;106:
;107:	va_start( argptr, fmt );
ADDRLP4 0
ADDRFP4 0+4
ASGNP4
line 108
;108:	len = ED_vsprintf( text, fmt, argptr );
ADDRLP4 4
ARGP4
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
ARGP4
ADDRLP4 8200
ADDRGP4 ED_vsprintf
CALLI4
ASGNI4
ADDRLP4 8196
ADDRLP4 8200
INDIRI4
ASGNI4
line 109
;109:	va_end( argptr );
ADDRLP4 0
CNSTP4 0
ASGNP4
line 111
;110:
;111:	text[4095] = '\0'; // truncate to 1.32b/c max print buffer size
ADDRLP4 4+4095
CNSTI1 0
ASGNI1
line 113
;112:
;113:	trap_Print( text );
ADDRLP4 4
ARGP4
ADDRGP4 trap_Print
CALLV
pop
line 114
;114:}
LABELV $133
endproc G_Printf 8204 12
export G_BroadcastServerCommand
proc G_BroadcastServerCommand 4 8
line 117
;115:
;116:
;117:void G_BroadcastServerCommand( int ignoreClient, const char *command ) {
line 119
;118:	int i;
;119:	for ( i = 0; i < level.maxclients; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $140
JUMPV
LABELV $137
line 120
;120:		if ( i == ignoreClient )
ADDRLP4 0
INDIRI4
ADDRFP4 0
INDIRI4
NEI4 $142
line 121
;121:			continue;
ADDRGP4 $138
JUMPV
LABELV $142
line 122
;122:		if ( level.clients[ i ].pers.connected == CON_CONNECTED ) {
ADDRLP4 0
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
NEI4 $144
line 123
;123:			trap_SendServerCommand( i, command );
ADDRLP4 0
INDIRI4
ARGI4
ADDRFP4 4
INDIRP4
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 124
;124:		}
LABELV $144
line 125
;125:	}
LABELV $138
line 119
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $140
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $137
line 126
;126:}
LABELV $136
endproc G_BroadcastServerCommand 4 8
export G_Error
proc G_Error 1028 12
line 129
;127:
;128:
;129:void QDECL G_Error( const char *fmt, ... ) {
line 133
;130:	va_list		argptr;
;131:	char		text[1024];
;132:
;133:	va_start( argptr, fmt );
ADDRLP4 0
ADDRFP4 0+4
ASGNP4
line 134
;134:	ED_vsprintf( text, fmt, argptr );
ADDRLP4 4
ARGP4
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 ED_vsprintf
CALLI4
pop
line 135
;135:	va_end( argptr );
ADDRLP4 0
CNSTP4 0
ASGNP4
line 137
;136:
;137:	trap_Error( text );
ADDRLP4 4
ARGP4
ADDRGP4 trap_Error
CALLV
pop
line 138
;138:}
LABELV $146
endproc G_Error 1028 12
export G_FindTeams
proc G_FindTeams 36 12
line 152
;139:
;140:
;141:/*
;142:================
;143:G_FindTeams
;144:
;145:Chain together all entities with a matching team field.
;146:Entity teams are used for item groups and multi-entity mover groups.
;147:
;148:All but the first will have the FL_TEAMSLAVE flag set and teammaster field set
;149:All but the last will have the teamchain field set to the next one
;150:================
;151:*/
;152:void G_FindTeams( void ) {
line 157
;153:	gentity_t	*e, *e2;
;154:	int		i, j;
;155:	int		c, c2;
;156:
;157:	c = 0;
ADDRLP4 20
CNSTI4 0
ASGNI4
line 158
;158:	c2 = 0;
ADDRLP4 12
CNSTI4 0
ASGNI4
line 159
;159:	for ( i=MAX_CLIENTS, e=g_entities+i ; i < level.num_entities ; i++,e++ ){
ADDRLP4 16
CNSTI4 64
ASGNI4
ADDRLP4 4
ADDRLP4 16
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities
ADDP4
ASGNP4
ADDRGP4 $152
JUMPV
LABELV $149
line 160
;160:		if (!e->inuse)
ADDRLP4 4
INDIRP4
CNSTI4 520
ADDP4
INDIRI4
CNSTI4 0
NEI4 $154
line 161
;161:			continue;
ADDRGP4 $150
JUMPV
LABELV $154
line 162
;162:		if (!e->team)
ADDRLP4 4
INDIRP4
CNSTI4 656
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $156
line 163
;163:			continue;
ADDRGP4 $150
JUMPV
LABELV $156
line 164
;164:		if (e->flags & FL_TEAMSLAVE)
ADDRLP4 4
INDIRP4
CNSTI4 536
ADDP4
INDIRI4
CNSTI4 1024
BANDI4
CNSTI4 0
EQI4 $158
line 165
;165:			continue;
ADDRGP4 $150
JUMPV
LABELV $158
line 166
;166:		e->teammaster = e;
ADDRLP4 4
INDIRP4
CNSTI4 780
ADDP4
ADDRLP4 4
INDIRP4
ASGNP4
line 167
;167:		c++;
ADDRLP4 20
ADDRLP4 20
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 168
;168:		c2++;
ADDRLP4 12
ADDRLP4 12
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 169
;169:		for (j=i+1, e2=e+1 ; j < level.num_entities ; j++,e2++)
ADDRLP4 8
ADDRLP4 16
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 0
ADDRLP4 4
INDIRP4
CNSTI4 816
ADDP4
ASGNP4
ADDRGP4 $163
JUMPV
LABELV $160
line 170
;170:		{
line 171
;171:			if (!e2->inuse)
ADDRLP4 0
INDIRP4
CNSTI4 520
ADDP4
INDIRI4
CNSTI4 0
NEI4 $165
line 172
;172:				continue;
ADDRGP4 $161
JUMPV
LABELV $165
line 173
;173:			if (!e2->team)
ADDRLP4 0
INDIRP4
CNSTI4 656
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $167
line 174
;174:				continue;
ADDRGP4 $161
JUMPV
LABELV $167
line 175
;175:			if (e2->flags & FL_TEAMSLAVE)
ADDRLP4 0
INDIRP4
CNSTI4 536
ADDP4
INDIRI4
CNSTI4 1024
BANDI4
CNSTI4 0
EQI4 $169
line 176
;176:				continue;
ADDRGP4 $161
JUMPV
LABELV $169
line 177
;177:			if (!strcmp(e->team, e2->team))
ADDRLP4 4
INDIRP4
CNSTI4 656
ADDP4
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
CNSTI4 656
ADDP4
INDIRP4
ARGP4
ADDRLP4 28
ADDRGP4 strcmp
CALLI4
ASGNI4
ADDRLP4 28
INDIRI4
CNSTI4 0
NEI4 $171
line 178
;178:			{
line 179
;179:				c2++;
ADDRLP4 12
ADDRLP4 12
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 180
;180:				e2->teamchain = e->teamchain;
ADDRLP4 0
INDIRP4
CNSTI4 776
ADDP4
ADDRLP4 4
INDIRP4
CNSTI4 776
ADDP4
INDIRP4
ASGNP4
line 181
;181:				e->teamchain = e2;
ADDRLP4 4
INDIRP4
CNSTI4 776
ADDP4
ADDRLP4 0
INDIRP4
ASGNP4
line 182
;182:				e2->teammaster = e;
ADDRLP4 0
INDIRP4
CNSTI4 780
ADDP4
ADDRLP4 4
INDIRP4
ASGNP4
line 183
;183:				e2->flags |= FL_TEAMSLAVE;
ADDRLP4 32
ADDRLP4 0
INDIRP4
CNSTI4 536
ADDP4
ASGNP4
ADDRLP4 32
INDIRP4
ADDRLP4 32
INDIRP4
INDIRI4
CNSTI4 1024
BORI4
ASGNI4
line 186
;184:
;185:				// make sure that targets only point at the master
;186:				if ( e2->targetname ) {
ADDRLP4 0
INDIRP4
CNSTI4 652
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $173
line 187
;187:					e->targetname = e2->targetname;
ADDRLP4 4
INDIRP4
CNSTI4 652
ADDP4
ADDRLP4 0
INDIRP4
CNSTI4 652
ADDP4
INDIRP4
ASGNP4
line 188
;188:					e2->targetname = NULL;
ADDRLP4 0
INDIRP4
CNSTI4 652
ADDP4
CNSTP4 0
ASGNP4
line 189
;189:				}
LABELV $173
line 190
;190:			}
LABELV $171
line 191
;191:		}
LABELV $161
line 169
ADDRLP4 8
ADDRLP4 8
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 0
ADDRLP4 0
INDIRP4
CNSTI4 816
ADDP4
ASGNP4
LABELV $163
ADDRLP4 8
INDIRI4
ADDRGP4 level+12
INDIRI4
LTI4 $160
line 192
;192:	}
LABELV $150
line 159
ADDRLP4 16
ADDRLP4 16
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 4
ADDRLP4 4
INDIRP4
CNSTI4 816
ADDP4
ASGNP4
LABELV $152
ADDRLP4 16
INDIRI4
ADDRGP4 level+12
INDIRI4
LTI4 $149
line 194
;193:
;194:	G_Printf ("%i teams with %i entities\n", c, c2);
ADDRGP4 $175
ARGP4
ADDRLP4 20
INDIRI4
ARGI4
ADDRLP4 12
INDIRI4
ARGI4
ADDRGP4 G_Printf
CALLV
pop
line 195
;195:}
LABELV $148
endproc G_FindTeams 36 12
export G_RemapTeamShaders
proc G_RemapTeamShaders 0 0
line 198
;196:
;197:
;198:void G_RemapTeamShaders( void ) {
line 210
;199:#ifdef MISSIONPACK
;200:	char string[1024];
;201:	float f = level.time * 0.001;
;202:	Com_sprintf( string, sizeof(string), "team_icon/%s_red", g_redteam.string );
;203:	AddRemap("textures/ctf2/redteam01", string, f); 
;204:	AddRemap("textures/ctf2/redteam02", string, f); 
;205:	Com_sprintf( string, sizeof(string), "team_icon/%s_blue", g_blueteam.string );
;206:	AddRemap("textures/ctf2/blueteam01", string, f); 
;207:	AddRemap("textures/ctf2/blueteam02", string, f); 
;208:	trap_SetConfigstring(CS_SHADERSTATE, BuildShaderStateConfig());
;209:#endif
;210:}
LABELV $176
endproc G_RemapTeamShaders 0 0
export G_RegisterCvars
proc G_RegisterCvars 20 16
line 218
;211:
;212:
;213:/*
;214:=================
;215:G_RegisterCvars
;216:=================
;217:*/
;218:void G_RegisterCvars( void ) {
line 219
;219:	qboolean remapped = qfalse;
ADDRLP4 8
CNSTI4 0
ASGNI4
line 223
;220:	cvarTable_t *cv;
;221:	int i;
;222:
;223:	for ( i = 0, cv = gameCvarTable ; i < ARRAY_LEN( gameCvarTable ) ; i++, cv++ ) {
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRLP4 0
ADDRGP4 gameCvarTable
ASGNP4
ADDRGP4 $181
JUMPV
LABELV $178
line 224
;224:		trap_Cvar_Register( cv->vmCvar, cv->cvarName,
ADDRLP4 0
INDIRP4
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
CNSTI4 4
ADDP4
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
CNSTI4 8
ADDP4
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
CNSTI4 12
ADDP4
INDIRI4
ARGI4
ADDRGP4 trap_Cvar_Register
CALLV
pop
line 226
;225:			cv->defaultString, cv->cvarFlags );
;226:		if ( cv->vmCvar )
ADDRLP4 0
INDIRP4
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $182
line 227
;227:			cv->modificationCount = cv->vmCvar->modificationCount;
ADDRLP4 0
INDIRP4
CNSTI4 16
ADDP4
ADDRLP4 0
INDIRP4
INDIRP4
CNSTI4 4
ADDP4
INDIRI4
ASGNI4
LABELV $182
line 229
;228:
;229:		if (cv->teamShader) {
ADDRLP4 0
INDIRP4
CNSTI4 24
ADDP4
INDIRI4
CNSTI4 0
EQI4 $184
line 230
;230:			remapped = qtrue;
ADDRLP4 8
CNSTI4 1
ASGNI4
line 231
;231:		}
LABELV $184
line 232
;232:	}
LABELV $179
line 223
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 0
ADDRLP4 0
INDIRP4
CNSTI4 28
ADDP4
ASGNP4
LABELV $181
ADDRLP4 4
INDIRI4
CVIU4 4
CNSTU4 47
LTU4 $178
line 234
;233:
;234:	if (remapped) {
ADDRLP4 8
INDIRI4
CNSTI4 0
EQI4 $186
line 235
;235:		G_RemapTeamShaders();
ADDRGP4 G_RemapTeamShaders
CALLV
pop
line 236
;236:	}
LABELV $186
line 239
;237:
;238:	// check some things
;239:	if ( g_gametype.integer < 0 || g_gametype.integer >= GT_MAX_GAME_TYPE ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 0
LTI4 $192
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 5
LTI4 $188
LABELV $192
line 240
;240:		G_Printf( "g_gametype %i is out of range, defaulting to 0\n", g_gametype.integer );
ADDRGP4 $193
ARGP4
ADDRGP4 g_gametype+12
INDIRI4
ARGI4
ADDRGP4 G_Printf
CALLV
pop
line 241
;241:		trap_Cvar_Set( "g_gametype", "0" );
ADDRGP4 $64
ARGP4
ADDRGP4 $65
ARGP4
ADDRGP4 trap_Cvar_Set
CALLV
pop
line 242
;242:		trap_Cvar_Update( &g_gametype );
ADDRGP4 g_gametype
ARGP4
ADDRGP4 trap_Cvar_Update
CALLV
pop
line 243
;243:	}
LABELV $188
line 245
;244:
;245:	level.warmupModificationCount = g_warmup.modificationCount;
ADDRGP4 level+356
ADDRGP4 g_warmup+4
INDIRI4
ASGNI4
line 248
;246:
;247:	// force g_doWarmup to 1
;248:	trap_Cvar_Register( NULL, "g_doWarmup", "1", CVAR_ROM );
CNSTP4 0
ARGP4
ADDRGP4 $197
ARGP4
ADDRGP4 $77
ARGP4
CNSTI4 64
ARGI4
ADDRGP4 trap_Cvar_Register
CALLV
pop
line 249
;249:	trap_Cvar_Set( "g_doWarmup", "1" );
ADDRGP4 $197
ARGP4
ADDRGP4 $77
ARGP4
ADDRGP4 trap_Cvar_Set
CALLV
pop
line 250
;250:}
LABELV $177
endproc G_RegisterCvars 20 16
proc G_UpdateCvars 28 12
line 258
;251:
;252:
;253:/*
;254:=================
;255:G_UpdateCvars
;256:=================
;257:*/
;258:static void G_UpdateCvars( void ) {
line 261
;259:	int			i;
;260:	cvarTable_t	*cv;
;261:	qboolean remapped = qfalse;
ADDRLP4 8
CNSTI4 0
ASGNI4
line 263
;262:
;263:	for ( i = 0, cv = gameCvarTable ; i < ARRAY_LEN( gameCvarTable ) ; i++, cv++ ) {
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRLP4 0
ADDRGP4 gameCvarTable
ASGNP4
ADDRGP4 $202
JUMPV
LABELV $199
line 264
;264:		if ( cv->vmCvar ) {
ADDRLP4 0
INDIRP4
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $203
line 265
;265:			trap_Cvar_Update( cv->vmCvar );
ADDRLP4 0
INDIRP4
INDIRP4
ARGP4
ADDRGP4 trap_Cvar_Update
CALLV
pop
line 267
;266:
;267:			if ( cv->modificationCount != cv->vmCvar->modificationCount ) {
ADDRLP4 0
INDIRP4
CNSTI4 16
ADDP4
INDIRI4
ADDRLP4 0
INDIRP4
INDIRP4
CNSTI4 4
ADDP4
INDIRI4
EQI4 $205
line 268
;268:				cv->modificationCount = cv->vmCvar->modificationCount;
ADDRLP4 0
INDIRP4
CNSTI4 16
ADDP4
ADDRLP4 0
INDIRP4
INDIRP4
CNSTI4 4
ADDP4
INDIRI4
ASGNI4
line 270
;269:
;270:				if ( cv->trackChange ) {
ADDRLP4 0
INDIRP4
CNSTI4 20
ADDP4
INDIRI4
CNSTI4 0
EQI4 $207
line 271
;271:					G_BroadcastServerCommand( -1, va("print \"Server: %s changed to %s\n\"", 
ADDRGP4 $209
ARGP4
ADDRLP4 0
INDIRP4
CNSTI4 4
ADDP4
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
INDIRP4
CNSTI4 16
ADDP4
ARGP4
ADDRLP4 24
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 -1
ARGI4
ADDRLP4 24
INDIRP4
ARGP4
ADDRGP4 G_BroadcastServerCommand
CALLV
pop
line 273
;272:						cv->cvarName, cv->vmCvar->string ) );
;273:				}
LABELV $207
line 275
;274:
;275:				if (cv->teamShader) {
ADDRLP4 0
INDIRP4
CNSTI4 24
ADDP4
INDIRI4
CNSTI4 0
EQI4 $210
line 276
;276:					remapped = qtrue;
ADDRLP4 8
CNSTI4 1
ASGNI4
line 277
;277:				}
LABELV $210
line 278
;278:			}
LABELV $205
line 279
;279:		}
LABELV $203
line 280
;280:	}
LABELV $200
line 263
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 0
ADDRLP4 0
INDIRP4
CNSTI4 28
ADDP4
ASGNP4
LABELV $202
ADDRLP4 4
INDIRI4
CVIU4 4
CNSTU4 47
LTU4 $199
line 282
;281:
;282:	if (remapped) {
ADDRLP4 8
INDIRI4
CNSTI4 0
EQI4 $212
line 283
;283:		G_RemapTeamShaders();
ADDRGP4 G_RemapTeamShaders
CALLV
pop
line 284
;284:	}
LABELV $212
line 285
;285:}
LABELV $198
endproc G_UpdateCvars 28 12
proc G_LocateSpawnSpots 44 12
line 289
;286:
;287:
;288:static void G_LocateSpawnSpots( void ) 
;289:{
line 293
;290:	gentity_t			*ent;
;291:	int i, n;
;292:
;293:	level.spawnSpots[ SPAWN_SPOT_INTERMISSION ] = NULL;
ADDRGP4 level+7688+4092
CNSTP4 0
ASGNP4
line 296
;294:
;295:	// locate all spawn spots
;296:	n = 0;
ADDRLP4 4
CNSTI4 0
ASGNI4
line 297
;297:	ent = g_entities + MAX_CLIENTS;
ADDRLP4 0
ADDRGP4 g_entities+52224
ASGNP4
line 298
;298:	for ( i = MAX_CLIENTS; i < MAX_GENTITIES; i++, ent++ ) {
ADDRLP4 8
CNSTI4 64
ASGNI4
LABELV $218
line 300
;299:		
;300:		if ( !ent->inuse || !ent->classname )
ADDRLP4 0
INDIRP4
CNSTI4 520
ADDP4
INDIRI4
CNSTI4 0
EQI4 $224
ADDRLP4 0
INDIRP4
CNSTI4 524
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $222
LABELV $224
line 301
;301:			continue;
ADDRGP4 $219
JUMPV
LABELV $222
line 304
;302:
;303:		// intermission/ffa spots
;304:		if ( !Q_stricmpn( ent->classname, "info_player_", 12 ) ) {
ADDRLP4 0
INDIRP4
CNSTI4 524
ADDP4
INDIRP4
ARGP4
ADDRGP4 $227
ARGP4
CNSTI4 12
ARGI4
ADDRLP4 16
ADDRGP4 Q_stricmpn
CALLI4
ASGNI4
ADDRLP4 16
INDIRI4
CNSTI4 0
NEI4 $225
line 305
;305:			if ( !Q_stricmp( ent->classname+12, "intermission" ) ) {
ADDRLP4 0
INDIRP4
CNSTI4 524
ADDP4
INDIRP4
CNSTI4 12
ADDP4
ARGP4
ADDRGP4 $230
ARGP4
ADDRLP4 20
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 20
INDIRI4
CNSTI4 0
NEI4 $228
line 306
;306:				if ( level.spawnSpots[ SPAWN_SPOT_INTERMISSION ] == NULL ) {
ADDRGP4 level+7688+4092
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $219
line 307
;307:					level.spawnSpots[ SPAWN_SPOT_INTERMISSION ] = ent; // put in the last slot
ADDRGP4 level+7688+4092
ADDRLP4 0
INDIRP4
ASGNP4
line 308
;308:					ent->fteam = TEAM_FREE;
ADDRLP4 0
INDIRP4
CNSTI4 808
ADDP4
CNSTI4 0
ASGNI4
line 309
;309:				}
line 310
;310:				continue;
ADDRGP4 $219
JUMPV
LABELV $228
line 312
;311:			}
;312:			if ( !Q_stricmp( ent->classname+12, "deathmatch" ) ) {
ADDRLP4 0
INDIRP4
CNSTI4 524
ADDP4
INDIRP4
CNSTI4 12
ADDP4
ARGP4
ADDRGP4 $239
ARGP4
ADDRLP4 24
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 24
INDIRI4
CNSTI4 0
NEI4 $219
line 313
;313:				level.spawnSpots[n] = ent; n++;
ADDRLP4 4
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+7688
ADDP4
ADDRLP4 0
INDIRP4
ASGNP4
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 314
;314:				level.numSpawnSpotsFFA++;
ADDRLP4 28
ADDRGP4 level+11792
ASGNP4
ADDRLP4 28
INDIRP4
ADDRLP4 28
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 315
;315:				ent->fteam = TEAM_FREE;
ADDRLP4 0
INDIRP4
CNSTI4 808
ADDP4
CNSTI4 0
ASGNI4
line 316
;316:				ent->count = 1;
ADDRLP4 0
INDIRP4
CNSTI4 760
ADDP4
CNSTI4 1
ASGNI4
line 317
;317:				continue;
ADDRGP4 $219
JUMPV
line 319
;318:			}
;319:			continue;
LABELV $225
line 323
;320:		}
;321:
;322:		// team spawn spots
;323:		if ( !Q_stricmpn( ent->classname, "team_CTF_", 9 ) ) {
ADDRLP4 0
INDIRP4
CNSTI4 524
ADDP4
INDIRP4
ARGP4
ADDRGP4 $244
ARGP4
CNSTI4 9
ARGI4
ADDRLP4 20
ADDRGP4 Q_stricmpn
CALLI4
ASGNI4
ADDRLP4 20
INDIRI4
CNSTI4 0
NEI4 $242
line 324
;324:			if ( !Q_stricmp( ent->classname+9, "redspawn" ) ) {
ADDRLP4 0
INDIRP4
CNSTI4 524
ADDP4
INDIRP4
CNSTI4 9
ADDP4
ARGP4
ADDRGP4 $247
ARGP4
ADDRLP4 24
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 24
INDIRI4
CNSTI4 0
NEI4 $245
line 325
;325:				level.spawnSpots[n] = ent; n++;
ADDRLP4 4
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+7688
ADDP4
ADDRLP4 0
INDIRP4
ASGNP4
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 326
;326:				level.numSpawnSpotsTeam++;
ADDRLP4 28
ADDRGP4 level+11788
ASGNP4
ADDRLP4 28
INDIRP4
ADDRLP4 28
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 327
;327:				ent->fteam = TEAM_RED;
ADDRLP4 0
INDIRP4
CNSTI4 808
ADDP4
CNSTI4 1
ASGNI4
line 328
;328:				ent->count = 1; // means its not initial spawn point
ADDRLP4 0
INDIRP4
CNSTI4 760
ADDP4
CNSTI4 1
ASGNI4
line 329
;329:				continue;
ADDRGP4 $219
JUMPV
LABELV $245
line 331
;330:			}
;331:			if ( !Q_stricmp( ent->classname+9, "bluespawn" ) ) {
ADDRLP4 0
INDIRP4
CNSTI4 524
ADDP4
INDIRP4
CNSTI4 9
ADDP4
ARGP4
ADDRGP4 $252
ARGP4
ADDRLP4 28
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 28
INDIRI4
CNSTI4 0
NEI4 $250
line 332
;332:				level.spawnSpots[n] = ent; n++;
ADDRLP4 4
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+7688
ADDP4
ADDRLP4 0
INDIRP4
ASGNP4
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 333
;333:				level.numSpawnSpotsTeam++;
ADDRLP4 32
ADDRGP4 level+11788
ASGNP4
ADDRLP4 32
INDIRP4
ADDRLP4 32
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 334
;334:				ent->fteam = TEAM_BLUE;
ADDRLP4 0
INDIRP4
CNSTI4 808
ADDP4
CNSTI4 2
ASGNI4
line 335
;335:				ent->count = 1;
ADDRLP4 0
INDIRP4
CNSTI4 760
ADDP4
CNSTI4 1
ASGNI4
line 336
;336:				continue;
ADDRGP4 $219
JUMPV
LABELV $250
line 339
;337:			}
;338:			// base spawn spots
;339:			if ( !Q_stricmp( ent->classname+9, "redplayer" ) ) {
ADDRLP4 0
INDIRP4
CNSTI4 524
ADDP4
INDIRP4
CNSTI4 9
ADDP4
ARGP4
ADDRGP4 $257
ARGP4
ADDRLP4 32
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 32
INDIRI4
CNSTI4 0
NEI4 $255
line 340
;340:				level.spawnSpots[n] = ent; n++;
ADDRLP4 4
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+7688
ADDP4
ADDRLP4 0
INDIRP4
ASGNP4
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 341
;341:				level.numSpawnSpotsTeam++;
ADDRLP4 36
ADDRGP4 level+11788
ASGNP4
ADDRLP4 36
INDIRP4
ADDRLP4 36
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 342
;342:				ent->fteam = TEAM_RED;
ADDRLP4 0
INDIRP4
CNSTI4 808
ADDP4
CNSTI4 1
ASGNI4
line 343
;343:				ent->count = 0;
ADDRLP4 0
INDIRP4
CNSTI4 760
ADDP4
CNSTI4 0
ASGNI4
line 344
;344:				continue;
ADDRGP4 $219
JUMPV
LABELV $255
line 346
;345:			}
;346:			if ( !Q_stricmp( ent->classname+9, "blueplayer" ) ) {
ADDRLP4 0
INDIRP4
CNSTI4 524
ADDP4
INDIRP4
CNSTI4 9
ADDP4
ARGP4
ADDRGP4 $262
ARGP4
ADDRLP4 36
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 36
INDIRI4
CNSTI4 0
NEI4 $260
line 347
;347:				level.spawnSpots[n] = ent; n++;
ADDRLP4 4
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+7688
ADDP4
ADDRLP4 0
INDIRP4
ASGNP4
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 348
;348:				level.numSpawnSpotsTeam++;
ADDRLP4 40
ADDRGP4 level+11788
ASGNP4
ADDRLP4 40
INDIRP4
ADDRLP4 40
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 349
;349:				ent->fteam = TEAM_BLUE;
ADDRLP4 0
INDIRP4
CNSTI4 808
ADDP4
CNSTI4 2
ASGNI4
line 350
;350:				ent->count = 0;
ADDRLP4 0
INDIRP4
CNSTI4 760
ADDP4
CNSTI4 0
ASGNI4
line 351
;351:				continue;
LABELV $260
line 353
;352:			}
;353:		}
LABELV $242
line 354
;354:	}
LABELV $219
line 298
ADDRLP4 8
ADDRLP4 8
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 0
ADDRLP4 0
INDIRP4
CNSTI4 816
ADDP4
ASGNP4
ADDRLP4 8
INDIRI4
CNSTI4 1024
LTI4 $218
line 355
;355:	level.numSpawnSpots = n;
ADDRGP4 level+11784
ADDRLP4 4
INDIRI4
ASGNI4
line 356
;356:}
LABELV $214
endproc G_LocateSpawnSpots 44 12
proc G_InitGame 1288 20
line 365
;357:
;358:
;359:/*
;360:============
;361:G_InitGame
;362:
;363:============
;364:*/
;365:static void G_InitGame( int levelTime, int randomSeed, int restart ) {
line 369
;366:	char value[ MAX_CVAR_VALUE_STRING ];
;367:	int	i;
;368:
;369:	G_Printf ("------- Game Initialization -------\n");
ADDRGP4 $267
ARGP4
ADDRGP4 G_Printf
CALLV
pop
line 370
;370:	G_Printf ("gamename: %s\n", GAMEVERSION);
ADDRGP4 $268
ARGP4
ADDRGP4 $56
ARGP4
ADDRGP4 G_Printf
CALLV
pop
line 371
;371:	G_Printf ("gamedate: %s\n", __DATE__);
ADDRGP4 $269
ARGP4
ADDRGP4 $58
ARGP4
ADDRGP4 G_Printf
CALLV
pop
line 374
;372:
;373:	// extension interface
;374:	trap_Cvar_VariableStringBuffer( "//trap_GetValue", value, sizeof( value ) );
ADDRGP4 $270
ARGP4
ADDRLP4 4
ARGP4
CNSTI4 256
ARGI4
ADDRGP4 trap_Cvar_VariableStringBuffer
CALLV
pop
line 375
;375:	if ( value[0] ) {
ADDRLP4 4
INDIRI1
CVII4 1
CNSTI4 0
EQI4 $271
line 377
;376:#ifdef Q3_VM
;377:		trap_GetValue = (void*)~atoi( value );
ADDRLP4 4
ARGP4
ADDRLP4 260
ADDRGP4 atoi
CALLI4
ASGNI4
ADDRGP4 trap_GetValue
ADDRLP4 260
INDIRI4
BCOMI4
CVIU4 4
CVUP4 4
ASGNP4
line 381
;378:#else
;379:		dll_com_trapGetValue = atoi( value );
;380:#endif
;381:		if ( trap_GetValue( value, sizeof( value ), "SVF_SELF_PORTAL2_Q3E" ) ) {
ADDRLP4 4
ARGP4
CNSTI4 256
ARGI4
ADDRGP4 $275
ARGP4
ADDRLP4 264
ADDRGP4 trap_GetValue
INDIRP4
CALLI4
ASGNI4
ADDRLP4 264
INDIRI4
CNSTI4 0
EQI4 $273
line 382
;382:			svf_self_portal2 = atoi( value );
ADDRLP4 4
ARGP4
ADDRLP4 268
ADDRGP4 atoi
CALLI4
ASGNI4
ADDRGP4 svf_self_portal2
ADDRLP4 268
INDIRI4
ASGNI4
line 383
;383:		} else {
ADDRGP4 $274
JUMPV
LABELV $273
line 384
;384:			svf_self_portal2 = 0;
ADDRGP4 svf_self_portal2
CNSTI4 0
ASGNI4
line 385
;385:		}
LABELV $274
line 386
;386:	}
LABELV $271
line 388
;387:
;388:	srand( randomSeed );
ADDRFP4 4
INDIRI4
CVIU4 4
ARGU4
ADDRGP4 srand
CALLV
pop
line 390
;389:
;390:	G_RegisterCvars();
ADDRGP4 G_RegisterCvars
CALLV
pop
line 392
;391:
;392:	G_ProcessIPBans();
ADDRGP4 G_ProcessIPBans
CALLV
pop
line 394
;393:
;394:	G_InitMemory();
ADDRGP4 G_InitMemory
CALLV
pop
line 397
;395:
;396:	// set some level globals
;397:	memset( &level, 0, sizeof( level ) );
ADDRGP4 level
ARGP4
CNSTI4 0
ARGI4
CNSTI4 11804
ARGI4
ADDRGP4 memset
CALLP4
pop
line 398
;398:	level.time = levelTime;
ADDRGP4 level+32
ADDRFP4 0
INDIRI4
ASGNI4
line 400
;399:
;400:	level.startTime = levelTime;
ADDRGP4 level+40
ADDRFP4 0
INDIRI4
ASGNI4
line 402
;401:
;402:	level.previousTime = levelTime;
ADDRGP4 level+36
ADDRFP4 0
INDIRI4
ASGNI4
line 403
;403:	level.msec = FRAMETIME;
ADDRGP4 level+44
CNSTI4 100
ASGNI4
line 405
;404:
;405:	level.snd_fry = G_SoundIndex("sound/player/fry.wav");	// FIXME standing in lava / slime
ADDRGP4 $281
ARGP4
ADDRLP4 260
ADDRGP4 G_SoundIndex
CALLI4
ASGNI4
ADDRGP4 level+352
ADDRLP4 260
INDIRI4
ASGNI4
line 407
;406:
;407:	if ( g_gametype.integer != GT_SINGLE_PLAYER && g_log.string[0] ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 2
EQI4 $282
ADDRGP4 g_log+16
INDIRI1
CVII4 1
CNSTI4 0
EQI4 $282
line 408
;408:		if ( g_logSync.integer ) {
ADDRGP4 g_logSync+12
INDIRI4
CNSTI4 0
EQI4 $286
line 409
;409:			trap_FS_FOpenFile( g_log.string, &level.logFile, FS_APPEND_SYNC );
ADDRGP4 g_log+16
ARGP4
ADDRGP4 level+20
ARGP4
CNSTI4 3
ARGI4
ADDRGP4 trap_FS_FOpenFile
CALLI4
pop
line 410
;410:		} else {
ADDRGP4 $287
JUMPV
LABELV $286
line 411
;411:			trap_FS_FOpenFile( g_log.string, &level.logFile, FS_APPEND );
ADDRGP4 g_log+16
ARGP4
ADDRGP4 level+20
ARGP4
CNSTI4 2
ARGI4
ADDRGP4 trap_FS_FOpenFile
CALLI4
pop
line 412
;412:		}
LABELV $287
line 413
;413:		if ( level.logFile == FS_INVALID_HANDLE ) {
ADDRGP4 level+20
INDIRI4
CNSTI4 0
NEI4 $293
line 414
;414:			G_Printf( "WARNING: Couldn't open logfile: %s\n", g_log.string );
ADDRGP4 $296
ARGP4
ADDRGP4 g_log+16
ARGP4
ADDRGP4 G_Printf
CALLV
pop
line 415
;415:		} else {
ADDRGP4 $283
JUMPV
LABELV $293
line 418
;416:			char	serverinfo[MAX_INFO_STRING];
;417:
;418:			trap_GetServerinfo( serverinfo, sizeof( serverinfo ) );
ADDRLP4 264
ARGP4
CNSTI4 1024
ARGI4
ADDRGP4 trap_GetServerinfo
CALLV
pop
line 420
;419:
;420:			G_LogPrintf("------------------------------------------------------------\n" );
ADDRGP4 $298
ARGP4
ADDRGP4 G_LogPrintf
CALLV
pop
line 421
;421:			G_LogPrintf("InitGame: %s\n", serverinfo );
ADDRGP4 $299
ARGP4
ADDRLP4 264
ARGP4
ADDRGP4 G_LogPrintf
CALLV
pop
line 422
;422:		}
line 423
;423:	} else {
ADDRGP4 $283
JUMPV
LABELV $282
line 424
;424:		G_Printf( "Not logging to disk.\n" );
ADDRGP4 $300
ARGP4
ADDRGP4 G_Printf
CALLV
pop
line 425
;425:	}
LABELV $283
line 427
;426:
;427:	G_InitWorldSession();
ADDRGP4 G_InitWorldSession
CALLV
pop
line 430
;428:
;429:	// initialize all entities for this game
;430:	memset( g_entities, 0, MAX_GENTITIES * sizeof(g_entities[0]) );
ADDRGP4 g_entities
ARGP4
CNSTI4 0
ARGI4
CNSTI4 835584
ARGI4
ADDRGP4 memset
CALLP4
pop
line 431
;431:	level.gentities = g_entities;
ADDRGP4 level+4
ADDRGP4 g_entities
ASGNP4
line 434
;432:
;433:	// initialize all clients for this game
;434:	level.maxclients = g_maxclients.integer;
ADDRGP4 level+24
ADDRGP4 g_maxclients+12
INDIRI4
ASGNI4
line 435
;435:	memset( g_clients, 0, MAX_CLIENTS * sizeof(g_clients[0]) );
ADDRGP4 g_clients
ARGP4
CNSTI4 0
ARGI4
CNSTI4 100352
ARGI4
ADDRGP4 memset
CALLP4
pop
line 436
;436:	level.clients = g_clients;
ADDRGP4 level
ADDRGP4 g_clients
ASGNP4
line 439
;437:
;438:	// set client fields on player ents
;439:	for ( i=0 ; i<level.maxclients ; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $307
JUMPV
LABELV $304
line 440
;440:		g_entities[i].client = level.clients + i;
ADDRLP4 0
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities+516
ADDP4
ADDRLP4 0
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 441
;441:	}
LABELV $305
line 439
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $307
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $304
line 446
;442:
;443:	// always leave room for the max number of clients,
;444:	// even if they aren't all used, so numbers inside that
;445:	// range are NEVER anything but clients
;446:	level.num_entities = MAX_CLIENTS;
ADDRGP4 level+12
CNSTI4 64
ASGNI4
line 448
;447:
;448:	for ( i = 0 ; i < MAX_CLIENTS ; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
LABELV $311
line 449
;449:		g_entities[ i ].classname = "clientslot";
ADDRLP4 0
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities+524
ADDP4
ADDRGP4 $316
ASGNP4
line 450
;450:	}
LABELV $312
line 448
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 0
INDIRI4
CNSTI4 64
LTI4 $311
line 453
;451:
;452:	// let the server system know where the entites are
;453:	trap_LocateGameData( level.gentities, level.num_entities, sizeof( gentity_t ), 
ADDRGP4 level+4
INDIRP4
ARGP4
ADDRGP4 level+12
INDIRI4
ARGI4
CNSTI4 816
ARGI4
ADDRGP4 level
INDIRP4
ARGP4
CNSTI4 1568
ARGI4
ADDRGP4 trap_LocateGameData
CALLV
pop
line 457
;454:		&level.clients[0].ps, sizeof( level.clients[0] ) );
;455:
;456:	// reserve some spots for dead player bodies
;457:	InitBodyQue();
ADDRGP4 InitBodyQue
CALLV
pop
line 459
;458:
;459:	ClearRegisteredItems();
ADDRGP4 ClearRegisteredItems
CALLV
pop
line 462
;460:
;461:	// parse the key/value pairs and spawn gentities
;462:	G_SpawnEntitiesFromString();
ADDRGP4 G_SpawnEntitiesFromString
CALLV
pop
line 465
;463:
;464:	// general initialization
;465:	G_FindTeams();
ADDRGP4 G_FindTeams
CALLV
pop
line 468
;466:
;467:	// make sure we have flags for CTF, etc
;468:	if( g_gametype.integer >= GT_TEAM ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 3
LTI4 $319
line 469
;469:		G_CheckTeamItems();
ADDRGP4 G_CheckTeamItems
CALLV
pop
line 470
;470:	}
LABELV $319
line 472
;471:
;472:	SaveRegisteredItems();
ADDRGP4 SaveRegisteredItems
CALLV
pop
line 474
;473:
;474:	G_LocateSpawnSpots();
ADDRGP4 G_LocateSpawnSpots
CALLV
pop
line 476
;475:
;476:	G_Printf ("-----------------------------------\n");
ADDRGP4 $322
ARGP4
ADDRGP4 G_Printf
CALLV
pop
line 478
;477:
;478:	if( g_gametype.integer == GT_SINGLE_PLAYER || trap_Cvar_VariableIntegerValue( "com_buildScript" ) ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 2
EQI4 $327
ADDRGP4 $326
ARGP4
ADDRLP4 264
ADDRGP4 trap_Cvar_VariableIntegerValue
CALLI4
ASGNI4
ADDRLP4 264
INDIRI4
CNSTI4 0
EQI4 $323
LABELV $327
line 479
;479:		G_ModelIndex( SP_PODIUM_MODEL );
ADDRGP4 $328
ARGP4
ADDRGP4 G_ModelIndex
CALLI4
pop
line 480
;480:	}
LABELV $323
line 482
;481:
;482:	if ( trap_Cvar_VariableIntegerValue( "bot_enable" ) ) {
ADDRGP4 $331
ARGP4
ADDRLP4 268
ADDRGP4 trap_Cvar_VariableIntegerValue
CALLI4
ASGNI4
ADDRLP4 268
INDIRI4
CNSTI4 0
EQI4 $329
line 483
;483:		BotAISetup( restart );
ADDRFP4 8
INDIRI4
ARGI4
ADDRGP4 BotAISetup
CALLI4
pop
line 484
;484:		BotAILoadMap( restart );
ADDRFP4 8
INDIRI4
ARGI4
ADDRGP4 BotAILoadMap
CALLI4
pop
line 485
;485:		G_InitBots( restart );
ADDRFP4 8
INDIRI4
ARGI4
ADDRGP4 G_InitBots
CALLV
pop
line 486
;486:	}
LABELV $329
line 488
;487:
;488:	G_RemapTeamShaders();
ADDRGP4 G_RemapTeamShaders
CALLV
pop
line 491
;489:
;490:	// don't forget to reset times
;491:	trap_SetConfigstring( CS_INTERMISSION, "" );
CNSTI4 22
ARGI4
ADDRGP4 $60
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 493
;492:
;493:	if ( g_gametype.integer != GT_SINGLE_PLAYER ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 2
EQI4 $332
line 495
;494:		// launch rotation system on first map load
;495:		if ( trap_Cvar_VariableIntegerValue( SV_ROTATION ) == 0 ) {
ADDRGP4 $337
ARGP4
ADDRLP4 272
ADDRGP4 trap_Cvar_VariableIntegerValue
CALLI4
ASGNI4
ADDRLP4 272
INDIRI4
CNSTI4 0
NEI4 $335
line 496
;496:			trap_Cvar_Set( SV_ROTATION, "1" );
ADDRGP4 $337
ARGP4
ADDRGP4 $77
ARGP4
ADDRGP4 trap_Cvar_Set
CALLV
pop
line 497
;497:			level.denyMapRestart = qtrue;
ADDRGP4 level+11796
CNSTI4 1
ASGNI4
line 498
;498:			ParseMapRotation();
ADDRGP4 ParseMapRotation
CALLI4
pop
line 499
;499:		}
LABELV $335
line 500
;500:	}
LABELV $332
line 502
;501:
;502:	G_InitTeamBalance();
ADDRGP4 G_InitTeamBalance
CALLV
pop
line 503
;503:}
LABELV $266
endproc G_InitGame 1288 20
proc G_ShutdownGame 4 4
line 512
;504:
;505:
;506:/*
;507:=================
;508:G_ShutdownGame
;509:=================
;510:*/
;511:static void G_ShutdownGame( int restart ) 
;512:{
line 513
;513:	G_Printf ("==== ShutdownGame ====\n");
ADDRGP4 $340
ARGP4
ADDRGP4 G_Printf
CALLV
pop
line 515
;514:
;515:	if ( level.logFile != FS_INVALID_HANDLE ) {
ADDRGP4 level+20
INDIRI4
CNSTI4 0
EQI4 $341
line 516
;516:		G_LogPrintf("ShutdownGame:\n" );
ADDRGP4 $344
ARGP4
ADDRGP4 G_LogPrintf
CALLV
pop
line 517
;517:		G_LogPrintf("------------------------------------------------------------\n" );
ADDRGP4 $298
ARGP4
ADDRGP4 G_LogPrintf
CALLV
pop
line 518
;518:		trap_FS_FCloseFile( level.logFile );
ADDRGP4 level+20
INDIRI4
ARGI4
ADDRGP4 trap_FS_FCloseFile
CALLV
pop
line 519
;519:		level.logFile = FS_INVALID_HANDLE;
ADDRGP4 level+20
CNSTI4 0
ASGNI4
line 520
;520:	}
LABELV $341
line 523
;521:
;522:	// write all the client session data so we can get it back
;523:	G_WriteSessionData();
ADDRGP4 G_WriteSessionData
CALLV
pop
line 525
;524:
;525:	if ( trap_Cvar_VariableIntegerValue( "bot_enable" ) ) {
ADDRGP4 $331
ARGP4
ADDRLP4 0
ADDRGP4 trap_Cvar_VariableIntegerValue
CALLI4
ASGNI4
ADDRLP4 0
INDIRI4
CNSTI4 0
EQI4 $347
line 526
;526:		BotAIShutdown( restart );
ADDRFP4 0
INDIRI4
ARGI4
ADDRGP4 BotAIShutdown
CALLI4
pop
line 527
;527:	}
LABELV $347
line 528
;528:}
LABELV $339
endproc G_ShutdownGame 4 4
export Com_Error
proc Com_Error 4100 12
line 537
;529:
;530:
;531:
;532://===================================================================
;533:
;534:#ifndef GAME_HARD_LINKED
;535:// this is only here so the functions in q_shared.c and bg_*.c can link
;536:
;537:void QDECL Com_Error( int level, const char *fmt, ... ) {
line 541
;538:	va_list		argptr;
;539:	char		text[4096];
;540:
;541:	va_start( argptr, fmt );
ADDRLP4 0
ADDRFP4 4+4
ASGNP4
line 542
;542:	ED_vsprintf( text, fmt, argptr );
ADDRLP4 4
ARGP4
ADDRFP4 4
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 ED_vsprintf
CALLI4
pop
line 543
;543:	va_end( argptr );
ADDRLP4 0
CNSTP4 0
ASGNP4
line 545
;544:
;545:	trap_Error( text );
ADDRLP4 4
ARGP4
ADDRGP4 trap_Error
CALLV
pop
line 546
;546:}
LABELV $349
endproc Com_Error 4100 12
export Com_Printf
proc Com_Printf 4100 12
line 549
;547:
;548:
;549:void QDECL Com_Printf( const char *fmt, ... ) {
line 553
;550:	va_list		argptr;
;551:	char		text[4096];
;552:
;553:	va_start( argptr, fmt );
ADDRLP4 0
ADDRFP4 0+4
ASGNP4
line 554
;554:	ED_vsprintf( text, fmt, argptr );
ADDRLP4 4
ARGP4
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 ED_vsprintf
CALLI4
pop
line 555
;555:	va_end( argptr );
ADDRLP4 0
CNSTP4 0
ASGNP4
line 557
;556:
;557:	trap_Print( text );
ADDRLP4 4
ARGP4
ADDRGP4 trap_Print
CALLV
pop
line 558
;558:}
LABELV $351
endproc Com_Printf 4100 12
export AddTournamentPlayer
proc AddTournamentPlayer 20 8
line 578
;559:
;560:#endif
;561:
;562:/*
;563:========================================================================
;564:
;565:PLAYER COUNTING / SCORE SORTING
;566:
;567:========================================================================
;568:*/
;569:
;570:/*
;571:=============
;572:AddTournamentPlayer
;573:
;574:If there are less than two tournament players, put a
;575:spectator in the game and restart
;576:=============
;577:*/
;578:void AddTournamentPlayer( void ) {
line 583
;579:	int			i;
;580:	gclient_t	*client;
;581:	gclient_t	*nextInLine;
;582:
;583:	if ( level.numPlayingClients >= 2 ) {
ADDRGP4 level+84
INDIRI4
CNSTI4 2
LTI4 $354
line 584
;584:		return;
ADDRGP4 $353
JUMPV
LABELV $354
line 588
;585:	}
;586:
;587:	// never change during intermission
;588:	if ( level.intermissiontime ) {
ADDRGP4 level+7604
INDIRI4
CNSTI4 0
EQI4 $357
line 589
;589:		return;
ADDRGP4 $353
JUMPV
LABELV $357
line 592
;590:	}
;591:
;592:	nextInLine = NULL;
ADDRLP4 8
CNSTP4 0
ASGNP4
line 594
;593:
;594:	for ( i = 0 ; i < level.maxclients ; i++ ) {
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRGP4 $363
JUMPV
LABELV $360
line 595
;595:		client = &level.clients[i];
ADDRLP4 0
ADDRLP4 4
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 596
;596:		if ( client->pers.connected != CON_CONNECTED ) {
ADDRLP4 0
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
EQI4 $365
line 597
;597:			continue;
ADDRGP4 $361
JUMPV
LABELV $365
line 599
;598:		}
;599:		if ( client->sess.sessionTeam != TEAM_SPECTATOR ) {
ADDRLP4 0
INDIRP4
CNSTI4 624
ADDP4
INDIRI4
CNSTI4 3
EQI4 $367
line 600
;600:			continue;
ADDRGP4 $361
JUMPV
LABELV $367
line 603
;601:		}
;602:		// never select the dedicated follow or scoreboard clients
;603:		if ( client->sess.spectatorState == SPECTATOR_SCOREBOARD || 
ADDRLP4 0
INDIRP4
CNSTI4 632
ADDP4
INDIRI4
CNSTI4 3
EQI4 $371
ADDRLP4 0
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 0
GEI4 $369
LABELV $371
line 604
;604:			client->sess.spectatorClient < 0  ) {
line 605
;605:			continue;
ADDRGP4 $361
JUMPV
LABELV $369
line 608
;606:		}
;607:
;608:		if ( !nextInLine || client->sess.spectatorTime > nextInLine->sess.spectatorTime ) {
ADDRLP4 8
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $374
ADDRLP4 0
INDIRP4
CNSTI4 628
ADDP4
INDIRI4
ADDRLP4 8
INDIRP4
CNSTI4 628
ADDP4
INDIRI4
LEI4 $372
LABELV $374
line 609
;609:			nextInLine = client;
ADDRLP4 8
ADDRLP4 0
INDIRP4
ASGNP4
line 610
;610:		}
LABELV $372
line 611
;611:	}
LABELV $361
line 594
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $363
ADDRLP4 4
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $360
line 613
;612:
;613:	if ( !nextInLine ) {
ADDRLP4 8
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $375
line 614
;614:		return;
ADDRGP4 $353
JUMPV
LABELV $375
line 617
;615:	}
;616:
;617:	level.warmupTime = -1;
ADDRGP4 level+16
CNSTI4 -1
ASGNI4
line 620
;618:
;619:	// set them to free-for-all team
;620:	SetTeam( &g_entities[ nextInLine - level.clients ], "f" );
ADDRLP4 8
INDIRP4
CVPU4 4
ADDRGP4 level
INDIRP4
CVPU4 4
SUBU4
CVUI4 4
CNSTI4 1568
DIVI4
CNSTI4 816
MULI4
ADDRGP4 g_entities
ADDP4
ARGP4
ADDRGP4 $378
ARGP4
ADDRGP4 SetTeam
CALLI4
pop
line 621
;621:}
LABELV $353
endproc AddTournamentPlayer 20 8
export RemoveTournamentLoser
proc RemoveTournamentLoser 4 8
line 631
;622:
;623:
;624:/*
;625:=======================
;626:RemoveTournamentLoser
;627:
;628:Make the loser a spectator at the back of the line
;629:=======================
;630:*/
;631:void RemoveTournamentLoser( void ) {
line 634
;632:	int			clientNum;
;633:
;634:	if ( level.numPlayingClients != 2 ) {
ADDRGP4 level+84
INDIRI4
CNSTI4 2
EQI4 $380
line 635
;635:		return;
ADDRGP4 $379
JUMPV
LABELV $380
line 638
;636:	}
;637:
;638:	clientNum = level.sortedClients[1];
ADDRLP4 0
ADDRGP4 level+88+4
INDIRI4
ASGNI4
line 640
;639:
;640:	if ( level.clients[ clientNum ].pers.connected != CON_CONNECTED ) {
ADDRLP4 0
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
EQI4 $385
line 641
;641:		return;
ADDRGP4 $379
JUMPV
LABELV $385
line 645
;642:	}
;643:
;644:	// make them a spectator
;645:	SetTeam( &g_entities[ clientNum ], "s" );
ADDRLP4 0
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities
ADDP4
ARGP4
ADDRGP4 $387
ARGP4
ADDRGP4 SetTeam
CALLI4
pop
line 646
;646:}
LABELV $379
endproc RemoveTournamentLoser 4 8
export RemoveTournamentWinner
proc RemoveTournamentWinner 4 8
line 654
;647:
;648:
;649:/*
;650:=======================
;651:RemoveTournamentWinner
;652:=======================
;653:*/
;654:void RemoveTournamentWinner( void ) {
line 657
;655:	int			clientNum;
;656:
;657:	if ( level.numPlayingClients != 2 ) {
ADDRGP4 level+84
INDIRI4
CNSTI4 2
EQI4 $389
line 658
;658:		return;
ADDRGP4 $388
JUMPV
LABELV $389
line 661
;659:	}
;660:
;661:	clientNum = level.sortedClients[0];
ADDRLP4 0
ADDRGP4 level+88
INDIRI4
ASGNI4
line 663
;662:
;663:	if ( level.clients[ clientNum ].pers.connected != CON_CONNECTED ) {
ADDRLP4 0
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
EQI4 $393
line 664
;664:		return;
ADDRGP4 $388
JUMPV
LABELV $393
line 668
;665:	}
;666:
;667:	// make them a spectator
;668:	SetTeam( &g_entities[ clientNum ], "s" );
ADDRLP4 0
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities
ADDP4
ARGP4
ADDRGP4 $387
ARGP4
ADDRGP4 SetTeam
CALLI4
pop
line 669
;669:}
LABELV $388
endproc RemoveTournamentWinner 4 8
export AdjustTournamentScores
proc AdjustTournamentScores 8 4
line 677
;670:
;671:
;672:/*
;673:=======================
;674:AdjustTournamentScores
;675:=======================
;676:*/
;677:void AdjustTournamentScores( void ) {
line 680
;678:	int			clientNum;
;679:
;680:	clientNum = level.sortedClients[0];
ADDRLP4 0
ADDRGP4 level+88
INDIRI4
ASGNI4
line 681
;681:	if ( level.clients[ clientNum ].pers.connected == CON_CONNECTED ) {
ADDRLP4 0
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
NEI4 $397
line 682
;682:		level.clients[ clientNum ].sess.wins++;
ADDRLP4 4
ADDRLP4 0
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 640
ADDP4
ASGNP4
ADDRLP4 4
INDIRP4
ADDRLP4 4
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 683
;683:		ClientUserinfoChanged( clientNum );
ADDRLP4 0
INDIRI4
ARGI4
ADDRGP4 ClientUserinfoChanged
CALLI4
pop
line 684
;684:	}
LABELV $397
line 686
;685:
;686:	clientNum = level.sortedClients[1];
ADDRLP4 0
ADDRGP4 level+88+4
INDIRI4
ASGNI4
line 687
;687:	if ( level.clients[ clientNum ].pers.connected == CON_CONNECTED ) {
ADDRLP4 0
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
NEI4 $401
line 688
;688:		level.clients[ clientNum ].sess.losses++;
ADDRLP4 4
ADDRLP4 0
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 644
ADDP4
ASGNP4
ADDRLP4 4
INDIRP4
ADDRLP4 4
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 689
;689:		ClientUserinfoChanged( clientNum );
ADDRLP4 0
INDIRI4
ARGI4
ADDRGP4 ClientUserinfoChanged
CALLI4
pop
line 690
;690:	}
LABELV $401
line 692
;691:
;692:}
LABELV $395
endproc AdjustTournamentScores 8 4
proc SortRanks 16 0
line 700
;693:
;694:
;695:/*
;696:=============
;697:SortRanks
;698:=============
;699:*/
;700:static int QDECL SortRanks( const void *a, const void *b ) {
line 703
;701:	gclient_t	*ca, *cb;
;702:
;703:	ca = &level.clients[*(int *)a];
ADDRLP4 0
ADDRFP4 0
INDIRP4
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 704
;704:	cb = &level.clients[*(int *)b];
ADDRLP4 4
ADDRFP4 4
INDIRP4
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 707
;705:
;706:	// sort special clients last
;707:	if ( ca->sess.spectatorState == SPECTATOR_SCOREBOARD || ca->sess.spectatorClient < 0 ) {
ADDRLP4 0
INDIRP4
CNSTI4 632
ADDP4
INDIRI4
CNSTI4 3
EQI4 $406
ADDRLP4 0
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 0
GEI4 $404
LABELV $406
line 708
;708:		return 1;
CNSTI4 1
RETI4
ADDRGP4 $403
JUMPV
LABELV $404
line 710
;709:	}
;710:	if ( cb->sess.spectatorState == SPECTATOR_SCOREBOARD || cb->sess.spectatorClient < 0  ) {
ADDRLP4 4
INDIRP4
CNSTI4 632
ADDP4
INDIRI4
CNSTI4 3
EQI4 $409
ADDRLP4 4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 0
GEI4 $407
LABELV $409
line 711
;711:		return -1;
CNSTI4 -1
RETI4
ADDRGP4 $403
JUMPV
LABELV $407
line 715
;712:	}
;713:
;714:	// then connecting clients
;715:	if ( ca->pers.connected == CON_CONNECTING ) {
ADDRLP4 0
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 1
NEI4 $410
line 716
;716:		return 1;
CNSTI4 1
RETI4
ADDRGP4 $403
JUMPV
LABELV $410
line 718
;717:	}
;718:	if ( cb->pers.connected == CON_CONNECTING ) {
ADDRLP4 4
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 1
NEI4 $412
line 719
;719:		return -1;
CNSTI4 -1
RETI4
ADDRGP4 $403
JUMPV
LABELV $412
line 723
;720:	}
;721:
;722:	// then spectators
;723:	if ( ca->sess.sessionTeam == TEAM_SPECTATOR && cb->sess.sessionTeam == TEAM_SPECTATOR ) {
ADDRLP4 0
INDIRP4
CNSTI4 624
ADDP4
INDIRI4
CNSTI4 3
NEI4 $414
ADDRLP4 4
INDIRP4
CNSTI4 624
ADDP4
INDIRI4
CNSTI4 3
NEI4 $414
line 724
;724:		if ( ca->sess.spectatorTime > cb->sess.spectatorTime ) {
ADDRLP4 0
INDIRP4
CNSTI4 628
ADDP4
INDIRI4
ADDRLP4 4
INDIRP4
CNSTI4 628
ADDP4
INDIRI4
LEI4 $416
line 725
;725:			return -1;
CNSTI4 -1
RETI4
ADDRGP4 $403
JUMPV
LABELV $416
line 727
;726:		}
;727:		if ( ca->sess.spectatorTime < cb->sess.spectatorTime ) {
ADDRLP4 0
INDIRP4
CNSTI4 628
ADDP4
INDIRI4
ADDRLP4 4
INDIRP4
CNSTI4 628
ADDP4
INDIRI4
GEI4 $418
line 728
;728:			return 1;
CNSTI4 1
RETI4
ADDRGP4 $403
JUMPV
LABELV $418
line 730
;729:		}
;730:		return 0;
CNSTI4 0
RETI4
ADDRGP4 $403
JUMPV
LABELV $414
line 732
;731:	}
;732:	if ( ca->sess.sessionTeam == TEAM_SPECTATOR ) {
ADDRLP4 0
INDIRP4
CNSTI4 624
ADDP4
INDIRI4
CNSTI4 3
NEI4 $420
line 733
;733:		return 1;
CNSTI4 1
RETI4
ADDRGP4 $403
JUMPV
LABELV $420
line 735
;734:	}
;735:	if ( cb->sess.sessionTeam == TEAM_SPECTATOR ) {
ADDRLP4 4
INDIRP4
CNSTI4 624
ADDP4
INDIRI4
CNSTI4 3
NEI4 $422
line 736
;736:		return -1;
CNSTI4 -1
RETI4
ADDRGP4 $403
JUMPV
LABELV $422
line 740
;737:	}
;738:
;739:	// then sort by score
;740:	if ( ca->ps.persistant[PERS_SCORE]
ADDRLP4 0
INDIRP4
CNSTI4 248
ADDP4
INDIRI4
ADDRLP4 4
INDIRP4
CNSTI4 248
ADDP4
INDIRI4
LEI4 $424
line 741
;741:		> cb->ps.persistant[PERS_SCORE] ) {
line 742
;742:		return -1;
CNSTI4 -1
RETI4
ADDRGP4 $403
JUMPV
LABELV $424
line 744
;743:	}
;744:	if ( ca->ps.persistant[PERS_SCORE]
ADDRLP4 0
INDIRP4
CNSTI4 248
ADDP4
INDIRI4
ADDRLP4 4
INDIRP4
CNSTI4 248
ADDP4
INDIRI4
GEI4 $426
line 745
;745:		< cb->ps.persistant[PERS_SCORE] ) {
line 746
;746:		return 1;
CNSTI4 1
RETI4
ADDRGP4 $403
JUMPV
LABELV $426
line 748
;747:	}
;748:	return 0;
CNSTI4 0
RETI4
LABELV $403
endproc SortRanks 16 0
export CalculateRanks
proc CalculateRanks 44 16
line 761
;749:}
;750:
;751:
;752:/*
;753:============
;754:CalculateRanks
;755:
;756:Recalculates the score ranks of all players
;757:This will be called on every client connect, begin, disconnect, death,
;758:and team change.
;759:============
;760:*/
;761:void CalculateRanks( void ) {
line 768
;762:	int		i;
;763:	int		rank;
;764:	int		score;
;765:	int		newScore;
;766:	gclient_t	*cl;
;767:
;768:	if ( level.restarted )
ADDRGP4 level+72
INDIRI4
CNSTI4 0
EQI4 $429
line 769
;769:		return;
ADDRGP4 $428
JUMPV
LABELV $429
line 771
;770:
;771:	level.follow1 = -1;
ADDRGP4 level+344
CNSTI4 -1
ASGNI4
line 772
;772:	level.follow2 = -1;
ADDRGP4 level+348
CNSTI4 -1
ASGNI4
line 773
;773:	level.numConnectedClients = 0;
ADDRGP4 level+76
CNSTI4 0
ASGNI4
line 774
;774:	level.numNonSpectatorClients = 0;
ADDRGP4 level+80
CNSTI4 0
ASGNI4
line 775
;775:	level.numPlayingClients = 0;
ADDRGP4 level+84
CNSTI4 0
ASGNI4
line 776
;776:	level.numVotingClients = 0;		// don't count bots
ADDRGP4 level+888
CNSTI4 0
ASGNI4
line 777
;777:	for (i = 0; i < ARRAY_LEN(level.numteamVotingClients); i++) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $441
JUMPV
LABELV $438
line 778
;778:		level.numteamVotingClients[i] = 0;
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+2964
ADDP4
CNSTI4 0
ASGNI4
line 779
;779:	}
LABELV $439
line 777
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $441
ADDRLP4 0
INDIRI4
CVIU4 4
CNSTU4 4
LTU4 $438
line 780
;780:	for ( i = 0 ; i < level.maxclients ; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $448
JUMPV
LABELV $445
line 781
;781:		if ( level.clients[i].pers.connected != CON_DISCONNECTED ) {
ADDRLP4 0
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 0
EQI4 $450
line 782
;782:			level.sortedClients[level.numConnectedClients] = i;
ADDRGP4 level+76
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+88
ADDP4
ADDRLP4 0
INDIRI4
ASGNI4
line 783
;783:			level.numConnectedClients++;
ADDRLP4 20
ADDRGP4 level+76
ASGNP4
ADDRLP4 20
INDIRP4
ADDRLP4 20
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 785
;784:
;785:			if ( level.clients[i].sess.sessionTeam != TEAM_SPECTATOR ) {
ADDRLP4 0
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 624
ADDP4
INDIRI4
CNSTI4 3
EQI4 $455
line 786
;786:				level.numNonSpectatorClients++;
ADDRLP4 24
ADDRGP4 level+80
ASGNP4
ADDRLP4 24
INDIRP4
ADDRLP4 24
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 789
;787:			
;788:				// decide if this should be auto-followed
;789:				if ( level.clients[i].pers.connected == CON_CONNECTED ) {
ADDRLP4 0
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
NEI4 $458
line 790
;790:					level.numPlayingClients++;
ADDRLP4 28
ADDRGP4 level+84
ASGNP4
ADDRLP4 28
INDIRP4
ADDRLP4 28
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 791
;791:					if ( !(g_entities[i].r.svFlags & SVF_BOT) ) {
ADDRLP4 0
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities+208+216
ADDP4
INDIRI4
CNSTI4 8
BANDI4
CNSTI4 0
NEI4 $461
line 792
;792:						level.numVotingClients++;
ADDRLP4 32
ADDRGP4 level+888
ASGNP4
ADDRLP4 32
INDIRP4
ADDRLP4 32
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 793
;793:						if ( level.clients[i].sess.sessionTeam == TEAM_RED )
ADDRLP4 0
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 624
ADDP4
INDIRI4
CNSTI4 1
NEI4 $466
line 794
;794:							level.numteamVotingClients[0]++;
ADDRLP4 36
ADDRGP4 level+2964
ASGNP4
ADDRLP4 36
INDIRP4
ADDRLP4 36
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRGP4 $467
JUMPV
LABELV $466
line 795
;795:						else if ( level.clients[i].sess.sessionTeam == TEAM_BLUE )
ADDRLP4 0
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 624
ADDP4
INDIRI4
CNSTI4 2
NEI4 $469
line 796
;796:							level.numteamVotingClients[1]++;
ADDRLP4 40
ADDRGP4 level+2964+4
ASGNP4
ADDRLP4 40
INDIRP4
ADDRLP4 40
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $469
LABELV $467
line 797
;797:					}
LABELV $461
line 798
;798:					if ( level.follow1 == -1 ) {
ADDRGP4 level+344
INDIRI4
CNSTI4 -1
NEI4 $473
line 799
;799:						level.follow1 = i;
ADDRGP4 level+344
ADDRLP4 0
INDIRI4
ASGNI4
line 800
;800:					} else if ( level.follow2 == -1 ) {
ADDRGP4 $474
JUMPV
LABELV $473
ADDRGP4 level+348
INDIRI4
CNSTI4 -1
NEI4 $477
line 801
;801:						level.follow2 = i;
ADDRGP4 level+348
ADDRLP4 0
INDIRI4
ASGNI4
line 802
;802:					}
LABELV $477
LABELV $474
line 803
;803:				}
LABELV $458
line 804
;804:			}
LABELV $455
line 805
;805:		}
LABELV $450
line 806
;806:	}
LABELV $446
line 780
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $448
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $445
line 808
;807:
;808:	qsort( level.sortedClients, level.numConnectedClients, 
ADDRGP4 level+88
ARGP4
ADDRGP4 level+76
INDIRI4
ARGI4
CNSTI4 4
ARGI4
ADDRGP4 SortRanks
ARGP4
ADDRGP4 qsort
CALLV
pop
line 812
;809:		sizeof(level.sortedClients[0]), SortRanks );
;810:
;811:	// set the rank value for all clients that are connected and not spectators
;812:	if ( g_gametype.integer >= GT_TEAM ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 3
LTI4 $484
line 814
;813:		// in team games, rank is just the order of the teams, 0=red, 1=blue, 2=tied
;814:		for ( i = 0;  i < level.numConnectedClients; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $490
JUMPV
LABELV $487
line 815
;815:			cl = &level.clients[ level.sortedClients[i] ];
ADDRLP4 4
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+88
ADDP4
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 816
;816:			if ( level.teamScores[TEAM_RED] == level.teamScores[TEAM_BLUE] ) {
ADDRGP4 level+48+4
INDIRI4
ADDRGP4 level+48+8
INDIRI4
NEI4 $493
line 817
;817:				cl->ps.persistant[PERS_RANK] = 2;
ADDRLP4 4
INDIRP4
CNSTI4 256
ADDP4
CNSTI4 2
ASGNI4
line 818
;818:			} else if ( level.teamScores[TEAM_RED] > level.teamScores[TEAM_BLUE] ) {
ADDRGP4 $494
JUMPV
LABELV $493
ADDRGP4 level+48+4
INDIRI4
ADDRGP4 level+48+8
INDIRI4
LEI4 $499
line 819
;819:				cl->ps.persistant[PERS_RANK] = 0;
ADDRLP4 4
INDIRP4
CNSTI4 256
ADDP4
CNSTI4 0
ASGNI4
line 820
;820:			} else {
ADDRGP4 $500
JUMPV
LABELV $499
line 821
;821:				cl->ps.persistant[PERS_RANK] = 1;
ADDRLP4 4
INDIRP4
CNSTI4 256
ADDP4
CNSTI4 1
ASGNI4
line 822
;822:			}
LABELV $500
LABELV $494
line 823
;823:		}
LABELV $488
line 814
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $490
ADDRLP4 0
INDIRI4
ADDRGP4 level+76
INDIRI4
LTI4 $487
line 824
;824:	} else {	
ADDRGP4 $485
JUMPV
LABELV $484
line 825
;825:		rank = -1;
ADDRLP4 12
CNSTI4 -1
ASGNI4
line 826
;826:		score = MAX_QINT;
ADDRLP4 16
CNSTI4 2147483647
ASGNI4
line 827
;827:		for ( i = 0;  i < level.numPlayingClients; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $508
JUMPV
LABELV $505
line 828
;828:			cl = &level.clients[ level.sortedClients[i] ];
ADDRLP4 4
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+88
ADDP4
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 829
;829:			newScore = cl->ps.persistant[PERS_SCORE];
ADDRLP4 8
ADDRLP4 4
INDIRP4
CNSTI4 248
ADDP4
INDIRI4
ASGNI4
line 830
;830:			if ( i == 0 || newScore != score ) {
ADDRLP4 0
INDIRI4
CNSTI4 0
EQI4 $513
ADDRLP4 8
INDIRI4
ADDRLP4 16
INDIRI4
EQI4 $511
LABELV $513
line 831
;831:				rank = i;
ADDRLP4 12
ADDRLP4 0
INDIRI4
ASGNI4
line 833
;832:				// assume we aren't tied until the next client is checked
;833:				level.clients[ level.sortedClients[i] ].ps.persistant[PERS_RANK] = rank;
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+88
ADDP4
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 256
ADDP4
ADDRLP4 12
INDIRI4
ASGNI4
line 834
;834:			} else {
ADDRGP4 $512
JUMPV
LABELV $511
line 836
;835:				// we are tied with the previous client
;836:				level.clients[ level.sortedClients[i-1] ].ps.persistant[PERS_RANK] = rank | RANK_TIED_FLAG;
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+88-4
ADDP4
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 256
ADDP4
ADDRLP4 12
INDIRI4
CNSTI4 16384
BORI4
ASGNI4
line 837
;837:				level.clients[ level.sortedClients[i] ].ps.persistant[PERS_RANK] = rank | RANK_TIED_FLAG;
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+88
ADDP4
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 256
ADDP4
ADDRLP4 12
INDIRI4
CNSTI4 16384
BORI4
ASGNI4
line 838
;838:			}
LABELV $512
line 839
;839:			score = newScore;
ADDRLP4 16
ADDRLP4 8
INDIRI4
ASGNI4
line 840
;840:			if ( g_gametype.integer == GT_SINGLE_PLAYER && level.numPlayingClients == 1 ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 2
NEI4 $518
ADDRGP4 level+84
INDIRI4
CNSTI4 1
NEI4 $518
line 841
;841:				level.clients[ level.sortedClients[i] ].ps.persistant[PERS_RANK] = rank | RANK_TIED_FLAG;
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+88
ADDP4
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 256
ADDP4
ADDRLP4 12
INDIRI4
CNSTI4 16384
BORI4
ASGNI4
line 842
;842:			}
LABELV $518
line 843
;843:		}
LABELV $506
line 827
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $508
ADDRLP4 0
INDIRI4
ADDRGP4 level+84
INDIRI4
LTI4 $505
line 844
;844:	}
LABELV $485
line 847
;845:
;846:	// set the CS_SCORES1/2 configstrings, which will be visible to everyone
;847:	if ( g_gametype.integer >= GT_TEAM ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 3
LTI4 $523
line 848
;848:		trap_SetConfigstring( CS_SCORES1, va("%i", level.teamScores[TEAM_RED] ) );
ADDRGP4 $526
ARGP4
ADDRGP4 level+48+4
INDIRI4
ARGI4
ADDRLP4 20
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 6
ARGI4
ADDRLP4 20
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 849
;849:		trap_SetConfigstring( CS_SCORES2, va("%i", level.teamScores[TEAM_BLUE] ) );
ADDRGP4 $526
ARGP4
ADDRGP4 level+48+8
INDIRI4
ARGI4
ADDRLP4 24
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 7
ARGI4
ADDRLP4 24
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 850
;850:	} else {
ADDRGP4 $524
JUMPV
LABELV $523
line 851
;851:		if ( level.numConnectedClients == 0 ) {
ADDRGP4 level+76
INDIRI4
CNSTI4 0
NEI4 $531
line 852
;852:			trap_SetConfigstring( CS_SCORES1, va("%i", SCORE_NOT_PRESENT) );
ADDRGP4 $526
ARGP4
CNSTI4 -9999
ARGI4
ADDRLP4 20
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 6
ARGI4
ADDRLP4 20
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 853
;853:			trap_SetConfigstring( CS_SCORES2, va("%i", SCORE_NOT_PRESENT) );
ADDRGP4 $526
ARGP4
CNSTI4 -9999
ARGI4
ADDRLP4 24
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 7
ARGI4
ADDRLP4 24
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 854
;854:		} else if ( level.numConnectedClients == 1 ) {
ADDRGP4 $532
JUMPV
LABELV $531
ADDRGP4 level+76
INDIRI4
CNSTI4 1
NEI4 $534
line 855
;855:			trap_SetConfigstring( CS_SCORES1, va("%i", level.clients[ level.sortedClients[0] ].ps.persistant[PERS_SCORE] ) );
ADDRGP4 $526
ARGP4
ADDRGP4 level+88
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 248
ADDP4
INDIRI4
ARGI4
ADDRLP4 20
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 6
ARGI4
ADDRLP4 20
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 856
;856:			trap_SetConfigstring( CS_SCORES2, va("%i", SCORE_NOT_PRESENT) );
ADDRGP4 $526
ARGP4
CNSTI4 -9999
ARGI4
ADDRLP4 24
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 7
ARGI4
ADDRLP4 24
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 857
;857:		} else {
ADDRGP4 $535
JUMPV
LABELV $534
line 858
;858:			trap_SetConfigstring( CS_SCORES1, va("%i", level.clients[ level.sortedClients[0] ].ps.persistant[PERS_SCORE] ) );
ADDRGP4 $526
ARGP4
ADDRGP4 level+88
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 248
ADDP4
INDIRI4
ARGI4
ADDRLP4 20
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 6
ARGI4
ADDRLP4 20
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 859
;859:			trap_SetConfigstring( CS_SCORES2, va("%i", level.clients[ level.sortedClients[1] ].ps.persistant[PERS_SCORE] ) );
ADDRGP4 $526
ARGP4
ADDRGP4 level+88+4
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 248
ADDP4
INDIRI4
ARGI4
ADDRLP4 24
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 7
ARGI4
ADDRLP4 24
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 860
;860:		}
LABELV $535
LABELV $532
line 861
;861:	}
LABELV $524
line 864
;862:
;863:	// see if it is time to end the level
;864:	CheckExitRules();
ADDRGP4 CheckExitRules
CALLV
pop
line 867
;865:
;866:	// if we are at the intermission, send the new info to everyone
;867:	if ( level.intermissiontime ) {
ADDRGP4 level+7604
INDIRI4
CNSTI4 0
EQI4 $541
line 868
;868:		SendScoreboardMessageToAllClients();
ADDRGP4 SendScoreboardMessageToAllClients
CALLV
pop
line 869
;869:	}
LABELV $541
line 870
;870:}
LABELV $428
endproc CalculateRanks 44 16
proc SendScoreboardMessageToAllClients 4 4
line 889
;871:
;872:
;873:/*
;874:========================================================================
;875:
;876:MAP CHANGING
;877:
;878:========================================================================
;879:*/
;880:
;881:/*
;882:========================
;883:SendScoreboardMessageToAllClients
;884:
;885:Do this at BeginIntermission time and whenever ranks are recalculated
;886:due to enters/exits/forced team changes
;887:========================
;888:*/
;889:static void SendScoreboardMessageToAllClients( void ) {
line 892
;890:	int		i;
;891:
;892:	for ( i = 0 ; i < level.maxclients ; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $548
JUMPV
LABELV $545
line 893
;893:		if ( level.clients[ i ].pers.connected == CON_CONNECTED ) {
ADDRLP4 0
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
NEI4 $550
line 894
;894:			DeathmatchScoreboardMessage( g_entities + i );
ADDRLP4 0
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities
ADDP4
ARGP4
ADDRGP4 DeathmatchScoreboardMessage
CALLV
pop
line 895
;895:		}
LABELV $550
line 896
;896:	}
LABELV $546
line 892
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $548
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $545
line 897
;897:}
LABELV $544
endproc SendScoreboardMessageToAllClients 4 4
export MoveClientToIntermission
proc MoveClientToIntermission 8 12
line 908
;898:
;899:
;900:/*
;901:========================
;902:MoveClientToIntermission
;903:
;904:When the intermission starts, this will be called for all players.
;905:If a new client connects, this will be called after the spawn function.
;906:========================
;907:*/
;908:void MoveClientToIntermission( gentity_t *ent ) {
line 912
;909:	
;910:	gclient_t * client;
;911:	
;912:	client = ent->client;
ADDRLP4 0
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
ASGNP4
line 915
;913:	
;914:	// take out of follow mode if needed
;915:	if ( client->sess.spectatorState == SPECTATOR_FOLLOW ) {
ADDRLP4 0
INDIRP4
CNSTI4 632
ADDP4
INDIRI4
CNSTI4 2
NEI4 $553
line 916
;916:		StopFollowing( ent, qtrue );
ADDRFP4 0
INDIRP4
ARGP4
CNSTI4 1
ARGI4
ADDRGP4 StopFollowing
CALLV
pop
line 917
;917:	}
LABELV $553
line 920
;918:
;919:	// move to the spot
;920:	VectorCopy( level.intermission_origin, ent->s.origin );
ADDRFP4 0
INDIRP4
CNSTI4 92
ADDP4
ADDRGP4 level+7616
INDIRB
ASGNB 12
line 921
;921:	VectorCopy( level.intermission_origin, client->ps.origin );
ADDRLP4 0
INDIRP4
CNSTI4 20
ADDP4
ADDRGP4 level+7616
INDIRB
ASGNB 12
line 922
;922:	SetClientViewAngle( ent, level.intermission_angle );
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 level+7628
ARGP4
ADDRGP4 SetClientViewAngle
CALLV
pop
line 923
;923:	client->ps.pm_type = PM_INTERMISSION;
ADDRLP4 0
INDIRP4
CNSTI4 4
ADDP4
CNSTI4 5
ASGNI4
line 926
;924:
;925:	// clean up powerup info
;926:	memset( client->ps.powerups, 0, sizeof( client->ps.powerups ) );
ADDRLP4 0
INDIRP4
CNSTI4 312
ADDP4
ARGP4
CNSTI4 0
ARGI4
CNSTI4 64
ARGI4
ADDRGP4 memset
CALLP4
pop
line 928
;927:
;928:	client->ps.eFlags = ( client->ps.eFlags & ~EF_PERSISTANT ) | ( client->ps.eFlags & EF_PERSISTANT );
ADDRLP4 0
INDIRP4
CNSTI4 104
ADDP4
ADDRLP4 0
INDIRP4
CNSTI4 104
ADDP4
INDIRI4
CNSTI4 -548865
BANDI4
ADDRLP4 0
INDIRP4
CNSTI4 104
ADDP4
INDIRI4
CNSTI4 548864
BANDI4
BORI4
ASGNI4
line 930
;929:
;930:	ent->s.eFlags = client->ps.eFlags;
ADDRFP4 0
INDIRP4
CNSTI4 8
ADDP4
ADDRLP4 0
INDIRP4
CNSTI4 104
ADDP4
INDIRI4
ASGNI4
line 931
;931:	ent->s.eType = ET_GENERAL;
ADDRFP4 0
INDIRP4
CNSTI4 4
ADDP4
CNSTI4 0
ASGNI4
line 932
;932:	ent->s.modelindex = 0;
ADDRFP4 0
INDIRP4
CNSTI4 160
ADDP4
CNSTI4 0
ASGNI4
line 933
;933:	ent->s.loopSound = 0;
ADDRFP4 0
INDIRP4
CNSTI4 156
ADDP4
CNSTI4 0
ASGNI4
line 934
;934:	ent->s.event = 0;
ADDRFP4 0
INDIRP4
CNSTI4 180
ADDP4
CNSTI4 0
ASGNI4
line 935
;935:	ent->r.contents = 0;
ADDRFP4 0
INDIRP4
CNSTI4 460
ADDP4
CNSTI4 0
ASGNI4
line 937
;936:
;937:	ent->s.legsAnim = LEGS_IDLE;
ADDRFP4 0
INDIRP4
CNSTI4 196
ADDP4
CNSTI4 22
ASGNI4
line 938
;938:	ent->s.torsoAnim = TORSO_STAND;
ADDRFP4 0
INDIRP4
CNSTI4 200
ADDP4
CNSTI4 11
ASGNI4
line 939
;939:}
LABELV $552
endproc MoveClientToIntermission 8 12
export FindIntermissionPoint
proc FindIntermissionPoint 28 16
line 949
;940:
;941:
;942:/*
;943:==================
;944:FindIntermissionPoint
;945:
;946:This is also used for spectator spawns
;947:==================
;948:*/
;949:void FindIntermissionPoint( void ) {
line 953
;950:	gentity_t	*ent, *target;
;951:	vec3_t		dir;
;952:
;953:	if ( level.intermission_spot ) // search only once
ADDRGP4 level+7640
INDIRI4
CNSTI4 0
EQI4 $559
line 954
;954:		return;
ADDRGP4 $558
JUMPV
LABELV $559
line 957
;955:
;956:	// find the intermission spot
;957:	ent = level.spawnSpots[ SPAWN_SPOT_INTERMISSION ];
ADDRLP4 0
ADDRGP4 level+7688+4092
INDIRP4
ASGNP4
line 959
;958:
;959:	if ( !ent ) { // the map creator forgot to put in an intermission point...
ADDRLP4 0
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $564
line 960
;960:		SelectSpawnPoint( NULL, vec3_origin, level.intermission_origin, level.intermission_angle );
CNSTP4 0
ARGP4
ADDRGP4 vec3_origin
ARGP4
ADDRGP4 level+7616
ARGP4
ADDRGP4 level+7628
ARGP4
ADDRGP4 SelectSpawnPoint
CALLP4
pop
line 961
;961:	} else {
ADDRGP4 $565
JUMPV
LABELV $564
line 962
;962:		VectorCopy (ent->s.origin, level.intermission_origin);
ADDRGP4 level+7616
ADDRLP4 0
INDIRP4
CNSTI4 92
ADDP4
INDIRB
ASGNB 12
line 963
;963:		VectorCopy (ent->s.angles, level.intermission_angle);
ADDRGP4 level+7628
ADDRLP4 0
INDIRP4
CNSTI4 116
ADDP4
INDIRB
ASGNB 12
line 965
;964:		// if it has a target, look towards it
;965:		if ( ent->target ) {
ADDRLP4 0
INDIRP4
CNSTI4 648
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $570
line 966
;966:			target = G_PickTarget( ent->target );
ADDRLP4 0
INDIRP4
CNSTI4 648
ADDP4
INDIRP4
ARGP4
ADDRLP4 20
ADDRGP4 G_PickTarget
CALLP4
ASGNP4
ADDRLP4 4
ADDRLP4 20
INDIRP4
ASGNP4
line 967
;967:			if ( target ) {
ADDRLP4 4
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $572
line 968
;968:				VectorSubtract( target->s.origin, level.intermission_origin, dir );
ADDRLP4 24
ADDRLP4 4
INDIRP4
ASGNP4
ADDRLP4 8
ADDRLP4 24
INDIRP4
CNSTI4 92
ADDP4
INDIRF4
ADDRGP4 level+7616
INDIRF4
SUBF4
ASGNF4
ADDRLP4 8+4
ADDRLP4 24
INDIRP4
CNSTI4 96
ADDP4
INDIRF4
ADDRGP4 level+7616+4
INDIRF4
SUBF4
ASGNF4
ADDRLP4 8+8
ADDRLP4 4
INDIRP4
CNSTI4 100
ADDP4
INDIRF4
ADDRGP4 level+7616+8
INDIRF4
SUBF4
ASGNF4
line 969
;969:				vectoangles( dir, level.intermission_angle );
ADDRLP4 8
ARGP4
ADDRGP4 level+7628
ARGP4
ADDRGP4 vectoangles
CALLV
pop
line 970
;970:			}
LABELV $572
line 971
;971:		}
LABELV $570
line 972
;972:	}
LABELV $565
line 974
;973:
;974:	level.intermission_spot = qtrue;
ADDRGP4 level+7640
CNSTI4 1
ASGNI4
line 975
;975:}
LABELV $558
endproc FindIntermissionPoint 28 16
export BeginIntermission
proc BeginIntermission 8 4
line 983
;976:
;977:
;978:/*
;979:==================
;980:BeginIntermission
;981:==================
;982:*/
;983:void BeginIntermission( void ) {
line 987
;984:	int			i;
;985:	gentity_t	*client;
;986:
;987:	if ( level.intermissiontime ) {
ADDRGP4 level+7604
INDIRI4
CNSTI4 0
EQI4 $584
line 988
;988:		return;	// already active
ADDRGP4 $583
JUMPV
LABELV $584
line 992
;989:	}
;990:
;991:	// if in tournement mode, change the wins / losses
;992:	if ( g_gametype.integer == GT_TOURNAMENT ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 1
NEI4 $587
line 993
;993:		AdjustTournamentScores();
ADDRGP4 AdjustTournamentScores
CALLV
pop
line 994
;994:	}
LABELV $587
line 996
;995:
;996:	level.intermissiontime = level.time;
ADDRGP4 level+7604
ADDRGP4 level+32
INDIRI4
ASGNI4
line 997
;997:	FindIntermissionPoint();
ADDRGP4 FindIntermissionPoint
CALLV
pop
line 1000
;998:
;999:	// move all clients to the intermission point
;1000:	for ( i = 0 ; i < level.maxclients ; i++ ) {
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRGP4 $595
JUMPV
LABELV $592
line 1001
;1001:		client = g_entities + i;
ADDRLP4 0
ADDRLP4 4
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities
ADDP4
ASGNP4
line 1002
;1002:		if ( !client->inuse )
ADDRLP4 0
INDIRP4
CNSTI4 520
ADDP4
INDIRI4
CNSTI4 0
NEI4 $597
line 1003
;1003:			continue;
ADDRGP4 $593
JUMPV
LABELV $597
line 1006
;1004:
;1005:		// respawn if dead
;1006:		if ( client->health <= 0 ) {
ADDRLP4 0
INDIRP4
CNSTI4 732
ADDP4
INDIRI4
CNSTI4 0
GTI4 $599
line 1007
;1007:			respawn( client );
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 respawn
CALLV
pop
line 1008
;1008:		}
LABELV $599
line 1010
;1009:
;1010:		MoveClientToIntermission( client );
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 MoveClientToIntermission
CALLV
pop
line 1011
;1011:	}
LABELV $593
line 1000
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $595
ADDRLP4 4
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $592
line 1020
;1012:
;1013:#ifdef MISSIONPACK
;1014:	if (g_singlePlayer.integer) {
;1015:		trap_Cvar_Set("ui_singlePlayerActive", "0");
;1016:		UpdateTournamentInfo();
;1017:	}
;1018:#else
;1019:	// if single player game
;1020:	if ( g_gametype.integer == GT_SINGLE_PLAYER ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 2
NEI4 $601
line 1021
;1021:		UpdateTournamentInfo();
ADDRGP4 UpdateTournamentInfo
CALLV
pop
line 1022
;1022:		SpawnModelsOnVictoryPads();
ADDRGP4 SpawnModelsOnVictoryPads
CALLV
pop
line 1023
;1023:	}
LABELV $601
line 1027
;1024:#endif
;1025:
;1026:	// send the current scoring to all clients
;1027:	SendScoreboardMessageToAllClients();
ADDRGP4 SendScoreboardMessageToAllClients
CALLV
pop
line 1028
;1028:}
LABELV $583
endproc BeginIntermission 8 4
export ExitLevel
proc ExitLevel 272 12
line 1039
;1029:
;1030:
;1031:/*
;1032:=============
;1033:ExitLevel
;1034:
;1035:When the intermission has been exited, the server is either killed
;1036:or moved to a new level based on the "nextmap" cvar 
;1037:=============
;1038:*/
;1039:void ExitLevel( void ) {
line 1044
;1040:	int		i;
;1041:	gclient_t *cl;
;1042:
;1043:	//bot interbreeding
;1044:	BotInterbreedEndMatch();
ADDRGP4 BotInterbreedEndMatch
CALLV
pop
line 1048
;1045:
;1046:	// if we are running a tournement map, kick the loser to spectator status,
;1047:	// which will automatically grab the next spectator and restart
;1048:	if ( g_gametype.integer == GT_TOURNAMENT  ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 1
NEI4 $605
line 1049
;1049:		if ( !level.restarted ) {
ADDRGP4 level+72
INDIRI4
CNSTI4 0
NEI4 $604
line 1050
;1050:			RemoveTournamentLoser();
ADDRGP4 RemoveTournamentLoser
CALLV
pop
line 1051
;1051:			trap_SendConsoleCommand( EXEC_APPEND, "map_restart 0\n" );
CNSTI4 2
ARGI4
ADDRGP4 $611
ARGP4
ADDRGP4 trap_SendConsoleCommand
CALLV
pop
line 1052
;1052:			level.restarted = qtrue;
ADDRGP4 level+72
CNSTI4 1
ASGNI4
line 1053
;1053:			level.intermissiontime = 0;
ADDRGP4 level+7604
CNSTI4 0
ASGNI4
line 1054
;1054:		}
line 1055
;1055:		return;	
ADDRGP4 $604
JUMPV
LABELV $605
line 1058
;1056:	}
;1057:
;1058:	level.intermissiontime = 0;
ADDRGP4 level+7604
CNSTI4 0
ASGNI4
line 1061
;1059:
;1060:	// reset all the scores so we don't enter the intermission again
;1061:	level.teamScores[TEAM_RED] = 0;
ADDRGP4 level+48+4
CNSTI4 0
ASGNI4
line 1062
;1062:	level.teamScores[TEAM_BLUE] = 0;
ADDRGP4 level+48+8
CNSTI4 0
ASGNI4
line 1063
;1063:	for ( i = 0 ; i < level.maxclients ; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $622
JUMPV
LABELV $619
line 1064
;1064:		cl = level.clients + i;
ADDRLP4 4
ADDRLP4 0
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 1065
;1065:		if ( cl->pers.connected != CON_CONNECTED ) {
ADDRLP4 4
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
EQI4 $624
line 1066
;1066:			continue;
ADDRGP4 $620
JUMPV
LABELV $624
line 1068
;1067:		}
;1068:		cl->ps.persistant[PERS_SCORE] = 0;
ADDRLP4 4
INDIRP4
CNSTI4 248
ADDP4
CNSTI4 0
ASGNI4
line 1069
;1069:	}
LABELV $620
line 1063
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $622
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $619
line 1072
;1070:
;1071:	// we need to do this here before changing to CON_CONNECTING
;1072:	G_WriteSessionData();
ADDRGP4 G_WriteSessionData
CALLV
pop
line 1076
;1073:
;1074:	// change all client states to connecting, so the early players into the
;1075:	// next level will know the others aren't done reconnecting
;1076:	for ( i = 0 ; i < level.maxclients ; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $629
JUMPV
LABELV $626
line 1077
;1077:		if ( level.clients[i].pers.connected == CON_CONNECTED ) {
ADDRLP4 0
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
NEI4 $631
line 1078
;1078:			level.clients[i].pers.connected = CON_CONNECTING;
ADDRLP4 0
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 468
ADDP4
CNSTI4 1
ASGNI4
line 1079
;1079:		}
LABELV $631
line 1080
;1080:	}
LABELV $627
line 1076
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $629
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $626
line 1082
;1081:
;1082:	if ( !ParseMapRotation() ) {
ADDRLP4 8
ADDRGP4 ParseMapRotation
CALLI4
ASGNI4
ADDRLP4 8
INDIRI4
CNSTI4 0
NEI4 $633
line 1085
;1083:		char val[ MAX_CVAR_VALUE_STRING ];
;1084:
;1085:		trap_Cvar_VariableStringBuffer( "nextmap", val, sizeof( val ) );
ADDRGP4 $635
ARGP4
ADDRLP4 12
ARGP4
CNSTI4 256
ARGI4
ADDRGP4 trap_Cvar_VariableStringBuffer
CALLV
pop
line 1087
;1086:
;1087:		if ( !val[0] || !Q_stricmpn( val, "map_restart ", 12 ) )
ADDRLP4 12
INDIRI1
CVII4 1
CNSTI4 0
EQI4 $639
ADDRLP4 12
ARGP4
ADDRGP4 $638
ARGP4
CNSTI4 12
ARGI4
ADDRLP4 268
ADDRGP4 Q_stricmpn
CALLI4
ASGNI4
ADDRLP4 268
INDIRI4
CNSTI4 0
NEI4 $636
LABELV $639
line 1088
;1088:			G_LoadMap( NULL );
CNSTP4 0
ARGP4
ADDRGP4 G_LoadMap
CALLV
pop
ADDRGP4 $637
JUMPV
LABELV $636
line 1090
;1089:		else
;1090:			trap_SendConsoleCommand( EXEC_APPEND, "vstr nextmap\n" );
CNSTI4 2
ARGI4
ADDRGP4 $640
ARGP4
ADDRGP4 trap_SendConsoleCommand
CALLV
pop
LABELV $637
line 1091
;1091:	} 
LABELV $633
line 1092
;1092:}
LABELV $604
endproc ExitLevel 272 12
export G_LogPrintf
proc G_LogPrintf 8224 24
line 1102
;1093:
;1094:
;1095:/*
;1096:=================
;1097:G_LogPrintf
;1098:
;1099:Print to the logfile with a time stamp if it is open
;1100:=================
;1101:*/
;1102:void QDECL G_LogPrintf( const char *fmt, ... ) {
line 1107
;1103:	va_list		argptr;
;1104:	char		string[BIG_INFO_STRING];
;1105:	int			min, tsec, sec, len, n;
;1106:
;1107:	tsec = level.time / 100;
ADDRLP4 8192
ADDRGP4 level+32
INDIRI4
CNSTI4 100
DIVI4
ASGNI4
line 1108
;1108:	sec = tsec / 10;
ADDRLP4 8196
ADDRLP4 8192
INDIRI4
CNSTI4 10
DIVI4
ASGNI4
line 1109
;1109:	tsec %= 10;
ADDRLP4 8192
ADDRLP4 8192
INDIRI4
CNSTI4 10
MODI4
ASGNI4
line 1110
;1110:	min = sec / 60;
ADDRLP4 8204
ADDRLP4 8196
INDIRI4
CNSTI4 60
DIVI4
ASGNI4
line 1111
;1111:	sec -= min * 60;
ADDRLP4 8196
ADDRLP4 8196
INDIRI4
ADDRLP4 8204
INDIRI4
CNSTI4 60
MULI4
SUBI4
ASGNI4
line 1113
;1112:
;1113:	len = Com_sprintf( string, sizeof( string ), "%3i:%02i.%i ", min, sec, tsec );
ADDRLP4 0
ARGP4
CNSTI4 8192
ARGI4
ADDRGP4 $643
ARGP4
ADDRLP4 8204
INDIRI4
ARGI4
ADDRLP4 8196
INDIRI4
ARGI4
ADDRLP4 8192
INDIRI4
ARGI4
ADDRLP4 8216
ADDRGP4 Com_sprintf
CALLI4
ASGNI4
ADDRLP4 8208
ADDRLP4 8216
INDIRI4
ASGNI4
line 1115
;1114:
;1115:	va_start( argptr, fmt );
ADDRLP4 8200
ADDRFP4 0+4
ASGNP4
line 1116
;1116:	ED_vsprintf( string + len, fmt,argptr );
ADDRLP4 8208
INDIRI4
ADDRLP4 0
ADDP4
ARGP4
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 8200
INDIRP4
ARGP4
ADDRGP4 ED_vsprintf
CALLI4
pop
line 1117
;1117:	va_end( argptr );
ADDRLP4 8200
CNSTP4 0
ASGNP4
line 1119
;1118:
;1119:	n = (int)strlen( string );
ADDRLP4 0
ARGP4
ADDRLP4 8220
ADDRGP4 strlen
CALLI4
ASGNI4
ADDRLP4 8212
ADDRLP4 8220
INDIRI4
ASGNI4
line 1121
;1120:
;1121:	if ( g_dedicated.integer ) {
ADDRGP4 g_dedicated+12
INDIRI4
CNSTI4 0
EQI4 $645
line 1122
;1122:		G_Printf( "%s", string + len );
ADDRGP4 $648
ARGP4
ADDRLP4 8208
INDIRI4
ADDRLP4 0
ADDP4
ARGP4
ADDRGP4 G_Printf
CALLV
pop
line 1123
;1123:	}
LABELV $645
line 1125
;1124:
;1125:	if ( level.logFile == FS_INVALID_HANDLE ) {
ADDRGP4 level+20
INDIRI4
CNSTI4 0
NEI4 $649
line 1126
;1126:		return;
ADDRGP4 $641
JUMPV
LABELV $649
line 1129
;1127:	}
;1128:
;1129:	trap_FS_Write( string, n, level.logFile );
ADDRLP4 0
ARGP4
ADDRLP4 8212
INDIRI4
ARGI4
ADDRGP4 level+20
INDIRI4
ARGI4
ADDRGP4 trap_FS_Write
CALLV
pop
line 1130
;1130:}
LABELV $641
endproc G_LogPrintf 8224 24
export LogExit
proc LogExit 24 20
line 1140
;1131:
;1132:
;1133:/*
;1134:================
;1135:LogExit
;1136:
;1137:Append information about this game to the log file
;1138:================
;1139:*/
;1140:void LogExit( const char *string ) {
line 1146
;1141:	int				i, numSorted;
;1142:	gclient_t		*cl;
;1143:#ifdef MISSIONPACK
;1144:	qboolean won = qtrue;
;1145:#endif
;1146:	G_LogPrintf( "Exit: %s\n", string );
ADDRGP4 $654
ARGP4
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 G_LogPrintf
CALLV
pop
line 1148
;1147:
;1148:	level.intermissionQueued = level.time;
ADDRGP4 level+7600
ADDRGP4 level+32
INDIRI4
ASGNI4
line 1152
;1149:
;1150:	// this will keep the clients from playing any voice sounds
;1151:	// that will get cut off when the queued intermission starts
;1152:	trap_SetConfigstring( CS_INTERMISSION, "1" );
CNSTI4 22
ARGI4
ADDRGP4 $77
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1155
;1153:
;1154:	// don't send more than 32 scores (FIXME?)
;1155:	numSorted = level.numConnectedClients;
ADDRLP4 8
ADDRGP4 level+76
INDIRI4
ASGNI4
line 1156
;1156:	if ( numSorted > 32 ) {
ADDRLP4 8
INDIRI4
CNSTI4 32
LEI4 $658
line 1157
;1157:		numSorted = 32;
ADDRLP4 8
CNSTI4 32
ASGNI4
line 1158
;1158:	}
LABELV $658
line 1160
;1159:
;1160:	if ( g_gametype.integer >= GT_TEAM ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 3
LTI4 $660
line 1161
;1161:		G_LogPrintf( "red:%i  blue:%i\n",
ADDRGP4 $663
ARGP4
ADDRGP4 level+48+4
INDIRI4
ARGI4
ADDRGP4 level+48+8
INDIRI4
ARGI4
ADDRGP4 G_LogPrintf
CALLV
pop
line 1163
;1162:			level.teamScores[TEAM_RED], level.teamScores[TEAM_BLUE] );
;1163:	}
LABELV $660
line 1165
;1164:
;1165:	for (i=0 ; i < numSorted ; i++) {
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRGP4 $671
JUMPV
LABELV $668
line 1168
;1166:		int		ping;
;1167:
;1168:		cl = &level.clients[level.sortedClients[i]];
ADDRLP4 0
ADDRLP4 4
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+88
ADDP4
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 1170
;1169:
;1170:		if ( cl->sess.sessionTeam == TEAM_SPECTATOR ) {
ADDRLP4 0
INDIRP4
CNSTI4 624
ADDP4
INDIRI4
CNSTI4 3
NEI4 $673
line 1171
;1171:			continue;
ADDRGP4 $669
JUMPV
LABELV $673
line 1173
;1172:		}
;1173:		if ( cl->pers.connected == CON_CONNECTING ) {
ADDRLP4 0
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 1
NEI4 $675
line 1174
;1174:			continue;
ADDRGP4 $669
JUMPV
LABELV $675
line 1177
;1175:		}
;1176:
;1177:		ping = cl->ps.ping < 999 ? cl->ps.ping : 999;
ADDRLP4 0
INDIRP4
CNSTI4 452
ADDP4
INDIRI4
CNSTI4 999
GEI4 $678
ADDRLP4 16
ADDRLP4 0
INDIRP4
CNSTI4 452
ADDP4
INDIRI4
ASGNI4
ADDRGP4 $679
JUMPV
LABELV $678
ADDRLP4 16
CNSTI4 999
ASGNI4
LABELV $679
ADDRLP4 12
ADDRLP4 16
INDIRI4
ASGNI4
line 1179
;1178:
;1179:		G_LogPrintf( "score: %i  ping: %i  client: %i %s\n", cl->ps.persistant[PERS_SCORE], ping, level.sortedClients[i],	cl->pers.netname );
ADDRGP4 $680
ARGP4
ADDRLP4 0
INDIRP4
CNSTI4 248
ADDP4
INDIRI4
ARGI4
ADDRLP4 12
INDIRI4
ARGI4
ADDRLP4 4
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+88
ADDP4
INDIRI4
ARGI4
ADDRLP4 0
INDIRP4
CNSTI4 508
ADDP4
ARGP4
ADDRGP4 G_LogPrintf
CALLV
pop
line 1188
;1180:#ifdef MISSIONPACK
;1181:		if (g_singlePlayer.integer && g_gametype.integer == GT_TOURNAMENT) {
;1182:			if (g_entities[cl - level.clients].r.svFlags & SVF_BOT && cl->ps.persistant[PERS_RANK] == 0) {
;1183:				won = qfalse;
;1184:			}
;1185:		}
;1186:#endif
;1187:
;1188:	}
LABELV $669
line 1165
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $671
ADDRLP4 4
INDIRI4
ADDRLP4 8
INDIRI4
LTI4 $668
line 1200
;1189:
;1190:#ifdef MISSIONPACK
;1191:	if (g_singlePlayer.integer) {
;1192:		if (g_gametype.integer >= GT_CTF) {
;1193:			won = level.teamScores[TEAM_RED] > level.teamScores[TEAM_BLUE];
;1194:		}
;1195:		trap_SendConsoleCommand( EXEC_APPEND, (won) ? "spWin\n" : "spLose\n" );
;1196:	}
;1197:#endif
;1198:
;1199:
;1200:}
LABELV $653
endproc LogExit 24 20
export CheckIntermissionExit
proc CheckIntermissionExit 20 0
line 1213
;1201:
;1202:
;1203:/*
;1204:=================
;1205:CheckIntermissionExit
;1206:
;1207:The level will stay at the intermission for a minimum of 5 seconds
;1208:If all players wish to continue, the level will then exit.
;1209:If one or more players have not acknowledged the continue, the game will
;1210:wait 10 seconds before going on.
;1211:=================
;1212:*/
;1213:void CheckIntermissionExit( void ) {
line 1219
;1214:	int			ready, notReady;
;1215:	int			i;
;1216:	gclient_t	*cl;
;1217:	int			readyMask;
;1218:
;1219:	if ( g_gametype.integer == GT_SINGLE_PLAYER )
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 2
NEI4 $683
line 1220
;1220:		return;
ADDRGP4 $682
JUMPV
LABELV $683
line 1223
;1221:
;1222:	// see which players are ready
;1223:	ready = 0;
ADDRLP4 16
CNSTI4 0
ASGNI4
line 1224
;1224:	notReady = 0;
ADDRLP4 12
CNSTI4 0
ASGNI4
line 1225
;1225:	readyMask = 0;
ADDRLP4 8
CNSTI4 0
ASGNI4
line 1226
;1226:	for ( i = 0 ; i < level.maxclients ; i++) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $689
JUMPV
LABELV $686
line 1227
;1227:		cl = level.clients + i;
ADDRLP4 4
ADDRLP4 0
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 1228
;1228:		if ( cl->pers.connected != CON_CONNECTED ) {
ADDRLP4 4
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
EQI4 $691
line 1229
;1229:			continue;
ADDRGP4 $687
JUMPV
LABELV $691
line 1232
;1230:		}
;1231:
;1232:		if ( g_entities[i].r.svFlags & SVF_BOT ) {
ADDRLP4 0
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities+208+216
ADDP4
INDIRI4
CNSTI4 8
BANDI4
CNSTI4 0
EQI4 $693
line 1233
;1233:			cl->readyToExit = qtrue;
ADDRLP4 4
INDIRP4
CNSTI4 652
ADDP4
CNSTI4 1
ASGNI4
line 1234
;1234:		} 
LABELV $693
line 1236
;1235:
;1236:		if ( cl->readyToExit ) {
ADDRLP4 4
INDIRP4
CNSTI4 652
ADDP4
INDIRI4
CNSTI4 0
EQI4 $697
line 1237
;1237:			ready++;
ADDRLP4 16
ADDRLP4 16
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 1238
;1238:			if ( i < 16 ) {
ADDRLP4 0
INDIRI4
CNSTI4 16
GEI4 $698
line 1239
;1239:				readyMask |= 1 << i;
ADDRLP4 8
ADDRLP4 8
INDIRI4
CNSTI4 1
ADDRLP4 0
INDIRI4
LSHI4
BORI4
ASGNI4
line 1240
;1240:			}
line 1241
;1241:		} else {
ADDRGP4 $698
JUMPV
LABELV $697
line 1242
;1242:			notReady++;
ADDRLP4 12
ADDRLP4 12
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 1243
;1243:		}
LABELV $698
line 1244
;1244:	}
LABELV $687
line 1226
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $689
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $686
line 1247
;1245:
;1246:	// vote in progress
;1247:	if ( level.voteTime || level.voteExecuteTime ) {
ADDRGP4 level+872
INDIRI4
CNSTI4 0
NEI4 $705
ADDRGP4 level+876
INDIRI4
CNSTI4 0
EQI4 $701
LABELV $705
line 1248
;1248:		ready  = 0;
ADDRLP4 16
CNSTI4 0
ASGNI4
line 1249
;1249:		notReady = 1;
ADDRLP4 12
CNSTI4 1
ASGNI4
line 1250
;1250:	}
LABELV $701
line 1254
;1251:
;1252:	// copy the readyMask to each player's stats so
;1253:	// it can be displayed on the scoreboard
;1254:	for ( i = 0 ; i < level.maxclients ; i++) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $709
JUMPV
LABELV $706
line 1255
;1255:		cl = level.clients + i;
ADDRLP4 4
ADDRLP4 0
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 1256
;1256:		if ( cl->pers.connected != CON_CONNECTED ) {
ADDRLP4 4
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
EQI4 $711
line 1257
;1257:			continue;
ADDRGP4 $707
JUMPV
LABELV $711
line 1259
;1258:		}
;1259:		cl->ps.stats[STAT_CLIENTS_READY] = readyMask;
ADDRLP4 4
INDIRP4
CNSTI4 204
ADDP4
ADDRLP4 8
INDIRI4
ASGNI4
line 1260
;1260:	}
LABELV $707
line 1254
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $709
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $706
line 1263
;1261:
;1262:	// never exit in less than five seconds
;1263:	if ( level.time < level.intermissiontime + 5000 ) {
ADDRGP4 level+32
INDIRI4
ADDRGP4 level+7604
INDIRI4
CNSTI4 5000
ADDI4
GEI4 $713
line 1264
;1264:		return;
ADDRGP4 $682
JUMPV
LABELV $713
line 1268
;1265:	}
;1266:
;1267:	// if nobody wants to go, clear timer
;1268:	if ( !ready && notReady ) {
ADDRLP4 16
INDIRI4
CNSTI4 0
NEI4 $717
ADDRLP4 12
INDIRI4
CNSTI4 0
EQI4 $717
line 1269
;1269:		level.readyToExit = qfalse;
ADDRGP4 level+7608
CNSTI4 0
ASGNI4
line 1270
;1270:		return;
ADDRGP4 $682
JUMPV
LABELV $717
line 1274
;1271:	}
;1272:
;1273:	// if everyone wants to go, go now
;1274:	if ( !notReady ) {
ADDRLP4 12
INDIRI4
CNSTI4 0
NEI4 $720
line 1275
;1275:		ExitLevel();
ADDRGP4 ExitLevel
CALLV
pop
line 1276
;1276:		return;
ADDRGP4 $682
JUMPV
LABELV $720
line 1280
;1277:	}
;1278:
;1279:	// the first person to ready starts the ten second timeout
;1280:	if ( !level.readyToExit ) {
ADDRGP4 level+7608
INDIRI4
CNSTI4 0
NEI4 $722
line 1281
;1281:		level.readyToExit = qtrue;
ADDRGP4 level+7608
CNSTI4 1
ASGNI4
line 1282
;1282:		level.exitTime = level.time + 10000;
ADDRGP4 level+7612
ADDRGP4 level+32
INDIRI4
CNSTI4 10000
ADDI4
ASGNI4
line 1283
;1283:	}
LABELV $722
line 1287
;1284:
;1285:	// if we have waited ten seconds since at least one player
;1286:	// wanted to exit, go ahead
;1287:	if ( level.time < level.exitTime ) {
ADDRGP4 level+32
INDIRI4
ADDRGP4 level+7612
INDIRI4
GEI4 $728
line 1288
;1288:		return;
ADDRGP4 $682
JUMPV
LABELV $728
line 1291
;1289:	}
;1290:
;1291:	ExitLevel();
ADDRGP4 ExitLevel
CALLV
pop
line 1292
;1292:}
LABELV $682
endproc CheckIntermissionExit 20 0
proc ScoreIsTied 12 0
line 1300
;1293:
;1294:
;1295:/*
;1296:=============
;1297:ScoreIsTied
;1298:=============
;1299:*/
;1300:static qboolean ScoreIsTied( void ) {
line 1303
;1301:	int		a, b;
;1302:
;1303:	if ( level.numPlayingClients < 2 ) {
ADDRGP4 level+84
INDIRI4
CNSTI4 2
GEI4 $733
line 1304
;1304:		return qfalse;
CNSTI4 0
RETI4
ADDRGP4 $732
JUMPV
LABELV $733
line 1307
;1305:	}
;1306:	
;1307:	if ( g_gametype.integer >= GT_TEAM ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 3
LTI4 $736
line 1308
;1308:		return level.teamScores[TEAM_RED] == level.teamScores[TEAM_BLUE];
ADDRGP4 level+48+4
INDIRI4
ADDRGP4 level+48+8
INDIRI4
NEI4 $744
ADDRLP4 8
CNSTI4 1
ASGNI4
ADDRGP4 $745
JUMPV
LABELV $744
ADDRLP4 8
CNSTI4 0
ASGNI4
LABELV $745
ADDRLP4 8
INDIRI4
RETI4
ADDRGP4 $732
JUMPV
LABELV $736
line 1311
;1309:	}
;1310:
;1311:	a = level.clients[level.sortedClients[0]].ps.persistant[PERS_SCORE];
ADDRLP4 0
ADDRGP4 level+88
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 248
ADDP4
INDIRI4
ASGNI4
line 1312
;1312:	b = level.clients[level.sortedClients[1]].ps.persistant[PERS_SCORE];
ADDRLP4 4
ADDRGP4 level+88+4
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 248
ADDP4
INDIRI4
ASGNI4
line 1314
;1313:
;1314:	return a == b;
ADDRLP4 0
INDIRI4
ADDRLP4 4
INDIRI4
NEI4 $750
ADDRLP4 8
CNSTI4 1
ASGNI4
ADDRGP4 $751
JUMPV
LABELV $750
ADDRLP4 8
CNSTI4 0
ASGNI4
LABELV $751
ADDRLP4 8
INDIRI4
RETI4
LABELV $732
endproc ScoreIsTied 12 0
proc CheckExitRules 16 8
line 1327
;1315:}
;1316:
;1317:
;1318:/*
;1319:=================
;1320:CheckExitRules
;1321:
;1322:There will be a delay between the time the exit is qualified for
;1323:and the time everyone is moved to the intermission spot, so you
;1324:can see the last frag.
;1325:=================
;1326:*/
;1327:static void CheckExitRules( void ) {
line 1333
;1328: 	int			i;
;1329:	gclient_t	*cl;
;1330:
;1331:	// if at the intermission, wait for all non-bots to
;1332:	// signal ready, then go to next level
;1333:	if ( level.intermissiontime ) {
ADDRGP4 level+7604
INDIRI4
CNSTI4 0
EQI4 $753
line 1334
;1334:		CheckIntermissionExit();
ADDRGP4 CheckIntermissionExit
CALLV
pop
line 1335
;1335:		return;
ADDRGP4 $752
JUMPV
LABELV $753
line 1338
;1336:	}
;1337:
;1338:	if ( level.intermissionQueued ) {
ADDRGP4 level+7600
INDIRI4
CNSTI4 0
EQI4 $756
line 1346
;1339:#ifdef MISSIONPACK
;1340:		int time = (g_singlePlayer.integer) ? SP_INTERMISSION_DELAY_TIME : INTERMISSION_DELAY_TIME;
;1341:		if ( level.time - level.intermissionQueued >= time ) {
;1342:			level.intermissionQueued = 0;
;1343:			BeginIntermission();
;1344:		}
;1345:#else
;1346:		if ( level.time - level.intermissionQueued >= INTERMISSION_DELAY_TIME ) {
ADDRGP4 level+32
INDIRI4
ADDRGP4 level+7600
INDIRI4
SUBI4
CNSTI4 1000
LTI4 $752
line 1347
;1347:			level.intermissionQueued = 0;
ADDRGP4 level+7600
CNSTI4 0
ASGNI4
line 1348
;1348:			BeginIntermission();
ADDRGP4 BeginIntermission
CALLV
pop
line 1349
;1349:		}
line 1351
;1350:#endif
;1351:		return;
ADDRGP4 $752
JUMPV
LABELV $756
line 1355
;1352:	}
;1353:
;1354:	// check for sudden death
;1355:	if ( ScoreIsTied() ) {
ADDRLP4 8
ADDRGP4 ScoreIsTied
CALLI4
ASGNI4
ADDRLP4 8
INDIRI4
CNSTI4 0
EQI4 $764
line 1357
;1356:		// always wait for sudden death
;1357:		return;
ADDRGP4 $752
JUMPV
LABELV $764
line 1360
;1358:	}
;1359:
;1360:	if ( g_timelimit.integer && !level.warmupTime ) {
ADDRGP4 g_timelimit+12
INDIRI4
CNSTI4 0
EQI4 $766
ADDRGP4 level+16
INDIRI4
CNSTI4 0
NEI4 $766
line 1361
;1361:		if ( level.time - level.startTime >= g_timelimit.integer*60000 ) {
ADDRGP4 level+32
INDIRI4
ADDRGP4 level+40
INDIRI4
SUBI4
ADDRGP4 g_timelimit+12
INDIRI4
CNSTI4 60000
MULI4
LTI4 $770
line 1362
;1362:			G_BroadcastServerCommand( -1, "print \"Timelimit hit.\n\"");
CNSTI4 -1
ARGI4
ADDRGP4 $775
ARGP4
ADDRGP4 G_BroadcastServerCommand
CALLV
pop
line 1363
;1363:			LogExit( "Timelimit hit." );
ADDRGP4 $776
ARGP4
ADDRGP4 LogExit
CALLV
pop
line 1364
;1364:			return;
ADDRGP4 $752
JUMPV
LABELV $770
line 1366
;1365:		}
;1366:	}
LABELV $766
line 1368
;1367:
;1368:	if ( level.numPlayingClients < 2 ) {
ADDRGP4 level+84
INDIRI4
CNSTI4 2
GEI4 $777
line 1369
;1369:		return;
ADDRGP4 $752
JUMPV
LABELV $777
line 1372
;1370:	}
;1371:
;1372:	if ( g_gametype.integer < GT_CTF && g_fraglimit.integer ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 4
GEI4 $780
ADDRGP4 g_fraglimit+12
INDIRI4
CNSTI4 0
EQI4 $780
line 1373
;1373:		if ( level.teamScores[TEAM_RED] >= g_fraglimit.integer ) {
ADDRGP4 level+48+4
INDIRI4
ADDRGP4 g_fraglimit+12
INDIRI4
LTI4 $784
line 1374
;1374:			G_BroadcastServerCommand( -1, "print \"Red hit the fraglimit.\n\"" );
CNSTI4 -1
ARGI4
ADDRGP4 $789
ARGP4
ADDRGP4 G_BroadcastServerCommand
CALLV
pop
line 1375
;1375:			LogExit( "Fraglimit hit." );
ADDRGP4 $790
ARGP4
ADDRGP4 LogExit
CALLV
pop
line 1376
;1376:			return;
ADDRGP4 $752
JUMPV
LABELV $784
line 1379
;1377:		}
;1378:
;1379:		if ( level.teamScores[TEAM_BLUE] >= g_fraglimit.integer ) {
ADDRGP4 level+48+8
INDIRI4
ADDRGP4 g_fraglimit+12
INDIRI4
LTI4 $791
line 1380
;1380:			G_BroadcastServerCommand( -1, "print \"Blue hit the fraglimit.\n\"" );
CNSTI4 -1
ARGI4
ADDRGP4 $796
ARGP4
ADDRGP4 G_BroadcastServerCommand
CALLV
pop
line 1381
;1381:			LogExit( "Fraglimit hit." );
ADDRGP4 $790
ARGP4
ADDRGP4 LogExit
CALLV
pop
line 1382
;1382:			return;
ADDRGP4 $752
JUMPV
LABELV $791
line 1385
;1383:		}
;1384:
;1385:		for ( i = 0 ; i < level.maxclients ; i++ ) {
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRGP4 $800
JUMPV
LABELV $797
line 1386
;1386:			cl = level.clients + i;
ADDRLP4 0
ADDRLP4 4
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 1387
;1387:			if ( cl->pers.connected != CON_CONNECTED ) {
ADDRLP4 0
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
EQI4 $802
line 1388
;1388:				continue;
ADDRGP4 $798
JUMPV
LABELV $802
line 1390
;1389:			}
;1390:			if ( cl->sess.sessionTeam != TEAM_FREE ) {
ADDRLP4 0
INDIRP4
CNSTI4 624
ADDP4
INDIRI4
CNSTI4 0
EQI4 $804
line 1391
;1391:				continue;
ADDRGP4 $798
JUMPV
LABELV $804
line 1394
;1392:			}
;1393:
;1394:			if ( cl->ps.persistant[PERS_SCORE] >= g_fraglimit.integer ) {
ADDRLP4 0
INDIRP4
CNSTI4 248
ADDP4
INDIRI4
ADDRGP4 g_fraglimit+12
INDIRI4
LTI4 $806
line 1395
;1395:				LogExit( "Fraglimit hit." );
ADDRGP4 $790
ARGP4
ADDRGP4 LogExit
CALLV
pop
line 1396
;1396:				G_BroadcastServerCommand( -1, va("print \"%s" S_COLOR_WHITE " hit the fraglimit.\n\"",
ADDRGP4 $809
ARGP4
ADDRLP4 0
INDIRP4
CNSTI4 508
ADDP4
ARGP4
ADDRLP4 12
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 -1
ARGI4
ADDRLP4 12
INDIRP4
ARGP4
ADDRGP4 G_BroadcastServerCommand
CALLV
pop
line 1398
;1397:					cl->pers.netname ) );
;1398:				return;
ADDRGP4 $752
JUMPV
LABELV $806
line 1400
;1399:			}
;1400:		}
LABELV $798
line 1385
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $800
ADDRLP4 4
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $797
line 1401
;1401:	}
LABELV $780
line 1403
;1402:
;1403:	if ( g_gametype.integer >= GT_CTF && g_capturelimit.integer ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 4
LTI4 $810
ADDRGP4 g_capturelimit+12
INDIRI4
CNSTI4 0
EQI4 $810
line 1405
;1404:
;1405:		if ( level.teamScores[TEAM_RED] >= g_capturelimit.integer ) {
ADDRGP4 level+48+4
INDIRI4
ADDRGP4 g_capturelimit+12
INDIRI4
LTI4 $814
line 1406
;1406:			G_BroadcastServerCommand( -1, "print \"Red hit the capturelimit.\n\"" );
CNSTI4 -1
ARGI4
ADDRGP4 $819
ARGP4
ADDRGP4 G_BroadcastServerCommand
CALLV
pop
line 1407
;1407:			LogExit( "Capturelimit hit." );
ADDRGP4 $820
ARGP4
ADDRGP4 LogExit
CALLV
pop
line 1408
;1408:			return;
ADDRGP4 $752
JUMPV
LABELV $814
line 1411
;1409:		}
;1410:
;1411:		if ( level.teamScores[TEAM_BLUE] >= g_capturelimit.integer ) {
ADDRGP4 level+48+8
INDIRI4
ADDRGP4 g_capturelimit+12
INDIRI4
LTI4 $821
line 1412
;1412:			G_BroadcastServerCommand( -1, "print \"Blue hit the capturelimit.\n\"" );
CNSTI4 -1
ARGI4
ADDRGP4 $826
ARGP4
ADDRGP4 G_BroadcastServerCommand
CALLV
pop
line 1413
;1413:			LogExit( "Capturelimit hit." );
ADDRGP4 $820
ARGP4
ADDRGP4 LogExit
CALLV
pop
line 1414
;1414:			return;
LABELV $821
line 1416
;1415:		}
;1416:	}
LABELV $810
line 1417
;1417:}
LABELV $752
endproc CheckExitRules 16 8
proc ClearBodyQue 12 4
line 1420
;1418:
;1419:
;1420:static void ClearBodyQue( void ) {
line 1424
;1421:	int	i;
;1422:	gentity_t	*ent;
;1423:
;1424:	for ( i = 0 ; i < BODY_QUEUE_SIZE ; i++ ) {
ADDRLP4 4
CNSTI4 0
ASGNI4
LABELV $828
line 1425
;1425:		ent = level.bodyQue[ i ];
ADDRLP4 0
ADDRLP4 4
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+7656
ADDP4
INDIRP4
ASGNP4
line 1426
;1426:		if ( ent->r.linked || ent->physicsObject ) {
ADDRLP4 0
INDIRP4
CNSTI4 416
ADDP4
INDIRI4
CNSTI4 0
NEI4 $835
ADDRLP4 0
INDIRP4
CNSTI4 564
ADDP4
INDIRI4
CNSTI4 0
EQI4 $833
LABELV $835
line 1427
;1427:			trap_UnlinkEntity( ent );
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 trap_UnlinkEntity
CALLV
pop
line 1428
;1428:			ent->physicsObject = qfalse;
ADDRLP4 0
INDIRP4
CNSTI4 564
ADDP4
CNSTI4 0
ASGNI4
line 1429
;1429:		}
LABELV $833
line 1430
;1430:	}
LABELV $829
line 1424
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 4
INDIRI4
CNSTI4 8
LTI4 $828
line 1431
;1431:}
LABELV $827
endproc ClearBodyQue 12 4
proc G_WarmupEnd 44 12
line 1435
;1432:
;1433:
;1434:static void G_WarmupEnd( void ) 
;1435:{
line 1441
;1436:	gclient_t *client;
;1437:	gentity_t *ent;
;1438:	int i, t;
;1439:
;1440:	// remove corpses
;1441:	ClearBodyQue();
ADDRGP4 ClearBodyQue
CALLV
pop
line 1444
;1442:
;1443:	// return flags
;1444:	Team_ResetFlags();
ADDRGP4 Team_ResetFlags
CALLV
pop
line 1446
;1445:
;1446:	memset( level.teamScores, 0, sizeof( level.teamScores ) );
ADDRGP4 level+48
ARGP4
CNSTI4 0
ARGI4
CNSTI4 16
ARGI4
ADDRGP4 memset
CALLP4
pop
line 1448
;1447:
;1448:	level.warmupTime = 0;
ADDRGP4 level+16
CNSTI4 0
ASGNI4
line 1449
;1449:	level.startTime = level.time;
ADDRGP4 level+40
ADDRGP4 level+32
INDIRI4
ASGNI4
line 1451
;1450:
;1451:	trap_SetConfigstring( CS_SCORES1, "0" );
CNSTI4 6
ARGI4
ADDRGP4 $65
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1452
;1452:	trap_SetConfigstring( CS_SCORES2, "0" );
CNSTI4 7
ARGI4
ADDRGP4 $65
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1453
;1453:	trap_SetConfigstring( CS_WARMUP, "" );
CNSTI4 5
ARGI4
ADDRGP4 $60
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1454
;1454:	trap_SetConfigstring( CS_LEVEL_START_TIME, va( "%i", level.startTime ) );
ADDRGP4 $526
ARGP4
ADDRGP4 level+40
INDIRI4
ARGI4
ADDRLP4 16
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 21
ARGI4
ADDRLP4 16
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1456
;1455:	
;1456:	client = level.clients;
ADDRLP4 0
ADDRGP4 level
INDIRP4
ASGNP4
line 1457
;1457:	for ( i = 0; i < level.maxclients; i++, client++ ) {
ADDRLP4 8
CNSTI4 0
ASGNI4
ADDRGP4 $846
JUMPV
LABELV $843
line 1459
;1458:		
;1459:		if ( client->pers.connected != CON_CONNECTED )
ADDRLP4 0
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
EQI4 $848
line 1460
;1460:			continue;
ADDRGP4 $844
JUMPV
LABELV $848
line 1463
;1461:
;1462:		// reset player awards
;1463:		client->ps.persistant[PERS_IMPRESSIVE_COUNT] = 0;
ADDRLP4 0
INDIRP4
CNSTI4 284
ADDP4
CNSTI4 0
ASGNI4
line 1464
;1464:		client->ps.persistant[PERS_EXCELLENT_COUNT] = 0;
ADDRLP4 0
INDIRP4
CNSTI4 288
ADDP4
CNSTI4 0
ASGNI4
line 1465
;1465:		client->ps.persistant[PERS_DEFEND_COUNT] = 0;
ADDRLP4 0
INDIRP4
CNSTI4 292
ADDP4
CNSTI4 0
ASGNI4
line 1466
;1466:		client->ps.persistant[PERS_ASSIST_COUNT] = 0;
ADDRLP4 0
INDIRP4
CNSTI4 296
ADDP4
CNSTI4 0
ASGNI4
line 1467
;1467:		client->ps.persistant[PERS_GAUNTLET_FRAG_COUNT] = 0;
ADDRLP4 0
INDIRP4
CNSTI4 300
ADDP4
CNSTI4 0
ASGNI4
line 1469
;1468:
;1469:		client->ps.persistant[PERS_SCORE] = 0;
ADDRLP4 0
INDIRP4
CNSTI4 248
ADDP4
CNSTI4 0
ASGNI4
line 1470
;1470:		client->ps.persistant[PERS_CAPTURES] = 0;
ADDRLP4 0
INDIRP4
CNSTI4 304
ADDP4
CNSTI4 0
ASGNI4
line 1472
;1471:
;1472:		client->ps.persistant[PERS_ATTACKER] = ENTITYNUM_NONE;
ADDRLP4 0
INDIRP4
CNSTI4 272
ADDP4
CNSTI4 1023
ASGNI4
line 1473
;1473:		client->ps.persistant[PERS_ATTACKEE_ARMOR] = 0;
ADDRLP4 0
INDIRP4
CNSTI4 276
ADDP4
CNSTI4 0
ASGNI4
line 1474
;1474:		client->damage.enemy = client->damage.team = 0;
ADDRLP4 24
CNSTI4 0
ASGNI4
ADDRLP4 0
INDIRP4
CNSTI4 1556
ADDP4
ADDRLP4 24
INDIRI4
ASGNI4
ADDRLP4 0
INDIRP4
CNSTI4 1560
ADDP4
ADDRLP4 24
INDIRI4
ASGNI4
line 1476
;1475:
;1476:		client->ps.stats[STAT_CLIENTS_READY] = 0;
ADDRLP4 0
INDIRP4
CNSTI4 204
ADDP4
CNSTI4 0
ASGNI4
line 1477
;1477:		client->ps.stats[STAT_HOLDABLE_ITEM] = 0;
ADDRLP4 0
INDIRP4
CNSTI4 188
ADDP4
CNSTI4 0
ASGNI4
line 1479
;1478:
;1479:		memset( &client->ps.powerups, 0, sizeof( client->ps.powerups ) );
ADDRLP4 0
INDIRP4
CNSTI4 312
ADDP4
ARGP4
CNSTI4 0
ARGI4
CNSTI4 64
ARGI4
ADDRGP4 memset
CALLP4
pop
line 1481
;1480:
;1481:		ClientUserinfoChanged( i ); // set max.health etc.
ADDRLP4 8
INDIRI4
ARGI4
ADDRGP4 ClientUserinfoChanged
CALLI4
pop
line 1483
;1482:
;1483:		if ( client->sess.sessionTeam != TEAM_SPECTATOR ) {
ADDRLP4 0
INDIRP4
CNSTI4 624
ADDP4
INDIRI4
CNSTI4 3
EQI4 $850
line 1484
;1484:			ClientSpawn( level.gentities + i );
ADDRLP4 8
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 level+4
INDIRP4
ADDP4
ARGP4
ADDRGP4 ClientSpawn
CALLV
pop
line 1485
;1485:		}
LABELV $850
line 1487
;1486:
;1487:		trap_SendServerCommand( i, "map_restart" );
ADDRLP4 8
INDIRI4
ARGI4
ADDRGP4 $853
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1488
;1488:	}
LABELV $844
line 1457
ADDRLP4 8
ADDRLP4 8
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 0
ADDRLP4 0
INDIRP4
CNSTI4 1568
ADDP4
ASGNP4
LABELV $846
ADDRLP4 8
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $843
line 1491
;1489:
;1490:	// respawn items, remove projectiles, etc.
;1491:	ent = level.gentities + MAX_CLIENTS;
ADDRLP4 4
ADDRGP4 level+4
INDIRP4
CNSTI4 52224
ADDP4
ASGNP4
line 1492
;1492:	for ( i = MAX_CLIENTS; i < level.num_entities ; i++, ent++ ) {
ADDRLP4 8
CNSTI4 64
ASGNI4
ADDRGP4 $858
JUMPV
LABELV $855
line 1494
;1493:
;1494:		if ( !ent->inuse || ent->freeAfterEvent )
ADDRLP4 4
INDIRP4
CNSTI4 520
ADDP4
INDIRI4
CNSTI4 0
EQI4 $862
ADDRLP4 4
INDIRP4
CNSTI4 556
ADDP4
INDIRI4
CNSTI4 0
EQI4 $860
LABELV $862
line 1495
;1495:			continue;
ADDRGP4 $856
JUMPV
LABELV $860
line 1497
;1496:
;1497:		if ( ent->tag == TAG_DONTSPAWN ) {
ADDRLP4 4
INDIRP4
CNSTI4 812
ADDP4
INDIRI4
CNSTI4 1
NEI4 $863
line 1498
;1498:			ent->nextthink = 0;
ADDRLP4 4
INDIRP4
CNSTI4 688
ADDP4
CNSTI4 0
ASGNI4
line 1499
;1499:			continue;
ADDRGP4 $856
JUMPV
LABELV $863
line 1502
;1500:		}
;1501:
;1502:		if ( ent->s.eType == ET_ITEM && ent->item ) {
ADDRLP4 4
INDIRP4
CNSTI4 4
ADDP4
INDIRI4
CNSTI4 2
NEI4 $865
ADDRLP4 4
INDIRP4
CNSTI4 804
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $865
line 1505
;1503:
;1504:			// already processed in Team_ResetFlags()
;1505:			if ( ent->item->giTag == PW_NEUTRALFLAG || ent->item->giTag == PW_REDFLAG || ent->item->giTag == PW_BLUEFLAG )
ADDRLP4 4
INDIRP4
CNSTI4 804
ADDP4
INDIRP4
CNSTI4 40
ADDP4
INDIRI4
CNSTI4 9
EQI4 $870
ADDRLP4 4
INDIRP4
CNSTI4 804
ADDP4
INDIRP4
CNSTI4 40
ADDP4
INDIRI4
CNSTI4 7
EQI4 $870
ADDRLP4 4
INDIRP4
CNSTI4 804
ADDP4
INDIRP4
CNSTI4 40
ADDP4
INDIRI4
CNSTI4 8
NEI4 $867
LABELV $870
line 1506
;1506:				continue;
ADDRGP4 $856
JUMPV
LABELV $867
line 1509
;1507:
;1508:			// remove dropped items
;1509:			if ( ent->flags & FL_DROPPED_ITEM ) {
ADDRLP4 4
INDIRP4
CNSTI4 536
ADDP4
INDIRI4
CNSTI4 4096
BANDI4
CNSTI4 0
EQI4 $871
line 1510
;1510:				ent->nextthink = level.time;
ADDRLP4 4
INDIRP4
CNSTI4 688
ADDP4
ADDRGP4 level+32
INDIRI4
ASGNI4
line 1511
;1511:				continue;
ADDRGP4 $856
JUMPV
LABELV $871
line 1515
;1512:			}
;1513:
;1514:			// respawn picked up items
;1515:			t = SpawnTime( ent, qtrue );
ADDRLP4 4
INDIRP4
ARGP4
CNSTI4 1
ARGI4
ADDRLP4 32
ADDRGP4 SpawnTime
CALLI4
ASGNI4
ADDRLP4 12
ADDRLP4 32
INDIRI4
ASGNI4
line 1516
;1516:			if ( t != 0 ) {
ADDRLP4 12
INDIRI4
CNSTI4 0
EQI4 $874
line 1518
;1517:				// hide items with defined spawn time
;1518:				ent->s.eFlags |= EF_NODRAW;
ADDRLP4 36
ADDRLP4 4
INDIRP4
CNSTI4 8
ADDP4
ASGNP4
ADDRLP4 36
INDIRP4
ADDRLP4 36
INDIRP4
INDIRI4
CNSTI4 128
BORI4
ASGNI4
line 1519
;1519:				ent->r.svFlags |= SVF_NOCLIENT;
ADDRLP4 40
ADDRLP4 4
INDIRP4
CNSTI4 424
ADDP4
ASGNP4
ADDRLP4 40
INDIRP4
ADDRLP4 40
INDIRP4
INDIRI4
CNSTI4 1
BORI4
ASGNI4
line 1520
;1520:				ent->r.contents = 0;
ADDRLP4 4
INDIRP4
CNSTI4 460
ADDP4
CNSTI4 0
ASGNI4
line 1521
;1521:				ent->activator = NULL;
ADDRLP4 4
INDIRP4
CNSTI4 772
ADDP4
CNSTP4 0
ASGNP4
line 1522
;1522:				ent->think = RespawnItem;
ADDRLP4 4
INDIRP4
CNSTI4 692
ADDP4
ADDRGP4 RespawnItem
ASGNP4
line 1523
;1523:			} else {
ADDRGP4 $875
JUMPV
LABELV $874
line 1524
;1524:				t = FRAMETIME;
ADDRLP4 12
CNSTI4 100
ASGNI4
line 1525
;1525:				if ( ent->activator ) {
ADDRLP4 4
INDIRP4
CNSTI4 772
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $876
line 1526
;1526:					ent->activator = NULL;
ADDRLP4 4
INDIRP4
CNSTI4 772
ADDP4
CNSTP4 0
ASGNP4
line 1527
;1527:					ent->think = RespawnItem;
ADDRLP4 4
INDIRP4
CNSTI4 692
ADDP4
ADDRGP4 RespawnItem
ASGNP4
line 1528
;1528:				}
LABELV $876
line 1529
;1529:			}
LABELV $875
line 1530
;1530:			if ( ent->random ) {
ADDRLP4 4
INDIRP4
CNSTI4 800
ADDP4
INDIRF4
CNSTF4 0
EQF4 $878
line 1531
;1531:				t += (crandom() * ent->random) * 1000;
ADDRLP4 36
ADDRGP4 rand
CALLI4
ASGNI4
ADDRLP4 12
ADDRLP4 12
INDIRI4
CVIF4 4
ADDRLP4 36
INDIRI4
CNSTI4 32767
BANDI4
CVIF4 4
CNSTF4 939524352
MULF4
CNSTF4 1056964608
SUBF4
CNSTF4 1073741824
MULF4
ADDRLP4 4
INDIRP4
CNSTI4 800
ADDP4
INDIRF4
MULF4
CNSTF4 1148846080
MULF4
ADDF4
CVFI4 4
ASGNI4
line 1532
;1532:				if ( t < FRAMETIME ) {
ADDRLP4 12
INDIRI4
CNSTI4 100
GEI4 $880
line 1533
;1533:					t = FRAMETIME;
ADDRLP4 12
CNSTI4 100
ASGNI4
line 1534
;1534:				}
LABELV $880
line 1535
;1535:			}
LABELV $878
line 1536
;1536:			ent->nextthink = level.time + t;
ADDRLP4 4
INDIRP4
CNSTI4 688
ADDP4
ADDRGP4 level+32
INDIRI4
ADDRLP4 12
INDIRI4
ADDI4
ASGNI4
line 1538
;1537:
;1538:		} else if ( ent->s.eType == ET_MISSILE ) {
ADDRGP4 $866
JUMPV
LABELV $865
ADDRLP4 4
INDIRP4
CNSTI4 4
ADDP4
INDIRI4
CNSTI4 3
NEI4 $883
line 1540
;1539:			// remove all launched missiles
;1540:			G_FreeEntity( ent );
ADDRLP4 4
INDIRP4
ARGP4
ADDRGP4 G_FreeEntity
CALLV
pop
line 1541
;1541:		}
LABELV $883
LABELV $866
line 1542
;1542:	}
LABELV $856
line 1492
ADDRLP4 8
ADDRLP4 8
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 4
ADDRLP4 4
INDIRP4
CNSTI4 816
ADDP4
ASGNP4
LABELV $858
ADDRLP4 8
INDIRI4
ADDRGP4 level+12
INDIRI4
LTI4 $855
line 1544
;1543:
;1544:	ShuffleTeams();
ADDRGP4 ShuffleTeams
CALLI4
pop
line 1545
;1545:}
LABELV $836
endproc G_WarmupEnd 44 12
proc CheckTournament 28 8
line 1564
;1546:
;1547:
;1548:/*
;1549:========================================================================
;1550:
;1551:FUNCTIONS CALLED EVERY FRAME
;1552:
;1553:========================================================================
;1554:*/
;1555:
;1556:
;1557:/*
;1558:=============
;1559:CheckTournament
;1560:
;1561:Once a frame, check for changes in tournement player state
;1562:=============
;1563:*/
;1564:static void CheckTournament( void ) {
line 1568
;1565:
;1566:	// check because we run 3 game frames before calling Connect and/or ClientBegin
;1567:	// for clients on a map_restart
;1568:	if ( level.numPlayingClients == 0 ) {
ADDRGP4 level+84
INDIRI4
CNSTI4 0
NEI4 $886
line 1569
;1569:		return;
ADDRGP4 $885
JUMPV
LABELV $886
line 1572
;1570:	}
;1571:
;1572:	if ( g_gametype.integer == GT_TOURNAMENT ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 1
NEI4 $889
line 1575
;1573:
;1574:		// pull in a spectator if needed
;1575:		if ( level.numPlayingClients < 2 ) {
ADDRGP4 level+84
INDIRI4
CNSTI4 2
GEI4 $892
line 1576
;1576:			AddTournamentPlayer();
ADDRGP4 AddTournamentPlayer
CALLV
pop
line 1577
;1577:		}
LABELV $892
line 1580
;1578:
;1579:		// if we don't have two players, go back to "waiting for players"
;1580:		if ( level.numPlayingClients != 2 ) {
ADDRGP4 level+84
INDIRI4
CNSTI4 2
EQI4 $895
line 1581
;1581:			if ( level.warmupTime != -1 ) {
ADDRGP4 level+16
INDIRI4
CNSTI4 -1
EQI4 $885
line 1582
;1582:				level.warmupTime = -1;
ADDRGP4 level+16
CNSTI4 -1
ASGNI4
line 1583
;1583:				trap_SetConfigstring( CS_WARMUP, va("%i", level.warmupTime) );
ADDRGP4 $526
ARGP4
ADDRGP4 level+16
INDIRI4
ARGI4
ADDRLP4 0
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 5
ARGI4
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1584
;1584:				G_LogPrintf( "Warmup:\n" );
ADDRGP4 $903
ARGP4
ADDRGP4 G_LogPrintf
CALLV
pop
line 1585
;1585:			}
line 1586
;1586:			return;
ADDRGP4 $885
JUMPV
LABELV $895
line 1589
;1587:		}
;1588:
;1589:		if ( level.warmupTime == 0 ) {
ADDRGP4 level+16
INDIRI4
CNSTI4 0
NEI4 $904
line 1590
;1590:			return;
ADDRGP4 $885
JUMPV
LABELV $904
line 1594
;1591:		}
;1592:
;1593:		// if the warmup is changed at the console, restart it
;1594:		if ( g_warmup.modificationCount != level.warmupModificationCount ) {
ADDRGP4 g_warmup+4
INDIRI4
ADDRGP4 level+356
INDIRI4
EQI4 $907
line 1595
;1595:			level.warmupModificationCount = g_warmup.modificationCount;
ADDRGP4 level+356
ADDRGP4 g_warmup+4
INDIRI4
ASGNI4
line 1596
;1596:			level.warmupTime = -1;
ADDRGP4 level+16
CNSTI4 -1
ASGNI4
line 1597
;1597:		}
LABELV $907
line 1600
;1598:
;1599:		// if all players have arrived, start the countdown
;1600:		if ( level.warmupTime < 0 ) {
ADDRGP4 level+16
INDIRI4
CNSTI4 0
GEI4 $914
line 1601
;1601:			if ( level.numPlayingClients == 2 ) {
ADDRGP4 level+84
INDIRI4
CNSTI4 2
NEI4 $885
line 1602
;1602:				if ( g_warmup.integer > 0 ) {
ADDRGP4 g_warmup+12
INDIRI4
CNSTI4 0
LEI4 $920
line 1603
;1603:					level.warmupTime = level.time + g_warmup.integer * 1000;
ADDRGP4 level+16
ADDRGP4 level+32
INDIRI4
ADDRGP4 g_warmup+12
INDIRI4
CNSTI4 1000
MULI4
ADDI4
ASGNI4
line 1604
;1604:				} else {
ADDRGP4 $921
JUMPV
LABELV $920
line 1605
;1605:					level.warmupTime = 0;
ADDRGP4 level+16
CNSTI4 0
ASGNI4
line 1606
;1606:				}
LABELV $921
line 1608
;1607:
;1608:				trap_SetConfigstring( CS_WARMUP, va("%i", level.warmupTime) );
ADDRGP4 $526
ARGP4
ADDRGP4 level+16
INDIRI4
ARGI4
ADDRLP4 0
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 5
ARGI4
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1609
;1609:			}
line 1610
;1610:			return;
ADDRGP4 $885
JUMPV
LABELV $914
line 1614
;1611:		}
;1612:
;1613:		// if the warmup time has counted down, restart
;1614:		if ( level.time > level.warmupTime ) {
ADDRGP4 level+32
INDIRI4
ADDRGP4 level+16
INDIRI4
LEI4 $890
line 1615
;1615:			G_WarmupEnd();
ADDRGP4 G_WarmupEnd
CALLV
pop
line 1616
;1616:			return;
ADDRGP4 $885
JUMPV
line 1618
;1617:		}
;1618:	} else if ( g_gametype.integer != GT_SINGLE_PLAYER && level.warmupTime != 0 ) {
LABELV $889
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 2
EQI4 $932
ADDRGP4 level+16
INDIRI4
CNSTI4 0
EQI4 $932
line 1620
;1619:		int		counts[TEAM_NUM_TEAMS];
;1620:		qboolean	notEnough = qfalse;
ADDRLP4 0
CNSTI4 0
ASGNI4
line 1622
;1621:
;1622:		if ( g_gametype.integer >= GT_TEAM ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 3
LTI4 $936
line 1623
;1623:			counts[TEAM_BLUE] = TeamConnectedCount( -1, TEAM_BLUE );
CNSTI4 -1
ARGI4
CNSTI4 2
ARGI4
ADDRLP4 20
ADDRGP4 TeamConnectedCount
CALLI4
ASGNI4
ADDRLP4 4+8
ADDRLP4 20
INDIRI4
ASGNI4
line 1624
;1624:			counts[TEAM_RED] = TeamConnectedCount( -1, TEAM_RED );
CNSTI4 -1
ARGI4
CNSTI4 1
ARGI4
ADDRLP4 24
ADDRGP4 TeamConnectedCount
CALLI4
ASGNI4
ADDRLP4 4+4
ADDRLP4 24
INDIRI4
ASGNI4
line 1626
;1625:
;1626:			if (counts[TEAM_RED] < 1 || counts[TEAM_BLUE] < 1) {
ADDRLP4 4+4
INDIRI4
CNSTI4 1
LTI4 $945
ADDRLP4 4+8
INDIRI4
CNSTI4 1
GEI4 $937
LABELV $945
line 1627
;1627:				notEnough = qtrue;
ADDRLP4 0
CNSTI4 1
ASGNI4
line 1628
;1628:			}
line 1629
;1629:		} else if ( level.numPlayingClients < 2 ) {
ADDRGP4 $937
JUMPV
LABELV $936
ADDRGP4 level+84
INDIRI4
CNSTI4 2
GEI4 $946
line 1630
;1630:			notEnough = qtrue;
ADDRLP4 0
CNSTI4 1
ASGNI4
line 1631
;1631:		}
LABELV $946
LABELV $937
line 1633
;1632:
;1633:		if ( notEnough ) {
ADDRLP4 0
INDIRI4
CNSTI4 0
EQI4 $949
line 1634
;1634:			if ( level.warmupTime != -1 ) {
ADDRGP4 level+16
INDIRI4
CNSTI4 -1
EQI4 $885
line 1635
;1635:				level.warmupTime = -1;
ADDRGP4 level+16
CNSTI4 -1
ASGNI4
line 1636
;1636:				trap_SetConfigstring( CS_WARMUP, va("%i", level.warmupTime) );
ADDRGP4 $526
ARGP4
ADDRGP4 level+16
INDIRI4
ARGI4
ADDRLP4 20
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 5
ARGI4
ADDRLP4 20
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1637
;1637:				G_LogPrintf( "Warmup:\n" );
ADDRGP4 $903
ARGP4
ADDRGP4 G_LogPrintf
CALLV
pop
line 1638
;1638:			}
line 1639
;1639:			return; // still waiting for team members
ADDRGP4 $885
JUMPV
LABELV $949
line 1642
;1640:		}
;1641:
;1642:		if ( level.warmupTime == 0 ) {
ADDRGP4 level+16
INDIRI4
CNSTI4 0
NEI4 $956
line 1643
;1643:			return;
ADDRGP4 $885
JUMPV
LABELV $956
line 1647
;1644:		}
;1645:
;1646:		// if the warmup is changed at the console, restart it
;1647:		if ( g_warmup.modificationCount != level.warmupModificationCount ) {
ADDRGP4 g_warmup+4
INDIRI4
ADDRGP4 level+356
INDIRI4
EQI4 $959
line 1648
;1648:			level.warmupModificationCount = g_warmup.modificationCount;
ADDRGP4 level+356
ADDRGP4 g_warmup+4
INDIRI4
ASGNI4
line 1649
;1649:			level.warmupTime = -1;
ADDRGP4 level+16
CNSTI4 -1
ASGNI4
line 1650
;1650:		}
LABELV $959
line 1653
;1651:
;1652:		// if all players have arrived, start the countdown
;1653:		if ( level.warmupTime < 0 ) {
ADDRGP4 level+16
INDIRI4
CNSTI4 0
GEI4 $966
line 1654
;1654:			if ( g_warmup.integer > 0 ) {
ADDRGP4 g_warmup+12
INDIRI4
CNSTI4 0
LEI4 $969
line 1655
;1655:				level.warmupTime = level.time + g_warmup.integer * 1000;
ADDRGP4 level+16
ADDRGP4 level+32
INDIRI4
ADDRGP4 g_warmup+12
INDIRI4
CNSTI4 1000
MULI4
ADDI4
ASGNI4
line 1656
;1656:			} else {
ADDRGP4 $970
JUMPV
LABELV $969
line 1657
;1657:				level.warmupTime = 0;
ADDRGP4 level+16
CNSTI4 0
ASGNI4
line 1658
;1658:			}
LABELV $970
line 1660
;1659:
;1660:			trap_SetConfigstring( CS_WARMUP, va("%i", level.warmupTime) );
ADDRGP4 $526
ARGP4
ADDRGP4 level+16
INDIRI4
ARGI4
ADDRLP4 20
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 5
ARGI4
ADDRLP4 20
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1661
;1661:			return;
ADDRGP4 $885
JUMPV
LABELV $966
line 1665
;1662:		}
;1663:
;1664:		// if the warmup time has counted down, restart
;1665:		if ( level.time > level.warmupTime ) {
ADDRGP4 level+32
INDIRI4
ADDRGP4 level+16
INDIRI4
LEI4 $977
line 1666
;1666:			G_WarmupEnd();
ADDRGP4 G_WarmupEnd
CALLV
pop
line 1667
;1667:			return;
LABELV $977
line 1669
;1668:		}
;1669:	}
LABELV $932
LABELV $890
line 1670
;1670:}
LABELV $885
endproc CheckTournament 28 8
proc CheckVote 4 8
line 1678
;1671:
;1672:
;1673:/*
;1674:==================
;1675:CheckVote
;1676:==================
;1677:*/
;1678:static void CheckVote( void ) {
line 1680
;1679:	
;1680:	if ( level.voteExecuteTime ) {
ADDRGP4 level+876
INDIRI4
CNSTI4 0
EQI4 $982
line 1681
;1681:		 if ( level.voteExecuteTime < level.time ) {
ADDRGP4 level+876
INDIRI4
ADDRGP4 level+32
INDIRI4
GEI4 $981
line 1682
;1682:			level.voteExecuteTime = 0;
ADDRGP4 level+876
CNSTI4 0
ASGNI4
line 1683
;1683:			trap_SendConsoleCommand( EXEC_APPEND, va( "%s\n", level.voteString ) );
ADDRGP4 $990
ARGP4
ADDRGP4 level+360
ARGP4
ADDRLP4 0
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 2
ARGI4
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 trap_SendConsoleCommand
CALLV
pop
line 1684
;1684:		 }
line 1685
;1685:		 return;
ADDRGP4 $981
JUMPV
LABELV $982
line 1688
;1686:	}
;1687:
;1688:	if ( !level.voteTime ) {
ADDRGP4 level+872
INDIRI4
CNSTI4 0
NEI4 $992
line 1689
;1689:		return;
ADDRGP4 $981
JUMPV
LABELV $992
line 1692
;1690:	}
;1691:
;1692:	if ( level.time - level.voteTime >= VOTE_TIME ) {
ADDRGP4 level+32
INDIRI4
ADDRGP4 level+872
INDIRI4
SUBI4
CNSTI4 30000
LTI4 $995
line 1693
;1693:		G_BroadcastServerCommand( -1, "print \"Vote failed.\n\"" );
CNSTI4 -1
ARGI4
ADDRGP4 $999
ARGP4
ADDRGP4 G_BroadcastServerCommand
CALLV
pop
line 1694
;1694:	} else {
ADDRGP4 $996
JUMPV
LABELV $995
line 1696
;1695:		// ATVI Q3 1.32 Patch #9, WNF
;1696:		if ( level.voteYes > level.numVotingClients/2 ) {
ADDRGP4 level+880
INDIRI4
ADDRGP4 level+888
INDIRI4
CNSTI4 2
DIVI4
LEI4 $1000
line 1698
;1697:			// execute the command, then remove the vote
;1698:			G_BroadcastServerCommand( -1, "print \"Vote passed.\n\"" );
CNSTI4 -1
ARGI4
ADDRGP4 $1004
ARGP4
ADDRGP4 G_BroadcastServerCommand
CALLV
pop
line 1699
;1699:			level.voteExecuteTime = level.time + 3000;
ADDRGP4 level+876
ADDRGP4 level+32
INDIRI4
CNSTI4 3000
ADDI4
ASGNI4
line 1700
;1700:		} else if ( level.voteNo >= level.numVotingClients/2 ) {
ADDRGP4 $1001
JUMPV
LABELV $1000
ADDRGP4 level+884
INDIRI4
ADDRGP4 level+888
INDIRI4
CNSTI4 2
DIVI4
LTI4 $981
line 1702
;1701:			// same behavior as a timeout
;1702:			G_BroadcastServerCommand( -1, "print \"Vote failed.\n\"" );
CNSTI4 -1
ARGI4
ADDRGP4 $999
ARGP4
ADDRGP4 G_BroadcastServerCommand
CALLV
pop
line 1703
;1703:		} else {
line 1705
;1704:			// still waiting for a majority
;1705:			return;
LABELV $1008
LABELV $1001
line 1707
;1706:		}
;1707:	}
LABELV $996
line 1709
;1708:
;1709:	level.voteTime = 0;
ADDRGP4 level+872
CNSTI4 0
ASGNI4
line 1710
;1710:	trap_SetConfigstring( CS_VOTE_TIME, "" );
CNSTI4 8
ARGI4
ADDRGP4 $60
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1711
;1711:}
LABELV $981
endproc CheckVote 4 8
proc PrintTeam 4 8
line 1719
;1712:
;1713:
;1714:/*
;1715:==================
;1716:PrintTeam
;1717:==================
;1718:*/
;1719:static void PrintTeam( team_t team, const char *message ) {
line 1722
;1720:	int i;
;1721:
;1722:	for ( i = 0 ; i < level.maxclients ; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $1016
JUMPV
LABELV $1013
line 1723
;1723:		if ( level.clients[i].sess.sessionTeam != team )
ADDRLP4 0
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 624
ADDP4
INDIRI4
ADDRFP4 0
INDIRI4
EQI4 $1018
line 1724
;1724:			continue;
ADDRGP4 $1014
JUMPV
LABELV $1018
line 1725
;1725:		if ( level.clients[i].pers.connected != CON_CONNECTED )
ADDRLP4 0
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
EQI4 $1020
line 1726
;1726:			continue;
ADDRGP4 $1014
JUMPV
LABELV $1020
line 1727
;1727:		trap_SendServerCommand( i, message );
ADDRLP4 0
INDIRI4
ARGI4
ADDRFP4 4
INDIRP4
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1728
;1728:	}
LABELV $1014
line 1722
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $1016
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $1013
line 1729
;1729:}
LABELV $1012
endproc PrintTeam 4 8
export SetLeader
proc SetLeader 8 8
line 1737
;1730:
;1731:
;1732:/*
;1733:==================
;1734:SetLeader
;1735:==================
;1736:*/
;1737:void SetLeader( team_t team, int client ) {
line 1740
;1738:	int i;
;1739:
;1740:	if ( level.clients[client].pers.connected == CON_DISCONNECTED ) {
ADDRFP4 4
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 0
NEI4 $1023
line 1741
;1741:		PrintTeam( team, va("print \"%s "S_COLOR_STRIP"is not connected\n\"", level.clients[client].pers.netname) );
ADDRGP4 $1025
ARGP4
ADDRFP4 4
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 508
ADDP4
ARGP4
ADDRLP4 4
ADDRGP4 va
CALLP4
ASGNP4
ADDRFP4 0
INDIRI4
ARGI4
ADDRLP4 4
INDIRP4
ARGP4
ADDRGP4 PrintTeam
CALLV
pop
line 1742
;1742:		return;
ADDRGP4 $1022
JUMPV
LABELV $1023
line 1744
;1743:	}
;1744:	if (level.clients[client].sess.sessionTeam != team) {
ADDRFP4 4
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 624
ADDP4
INDIRI4
ADDRFP4 0
INDIRI4
EQI4 $1026
line 1745
;1745:		PrintTeam( team, va("print \"%s "S_COLOR_STRIP"is not on the team anymore\n\"", level.clients[client].pers.netname) );
ADDRGP4 $1028
ARGP4
ADDRFP4 4
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 508
ADDP4
ARGP4
ADDRLP4 4
ADDRGP4 va
CALLP4
ASGNP4
ADDRFP4 0
INDIRI4
ARGI4
ADDRLP4 4
INDIRP4
ARGP4
ADDRGP4 PrintTeam
CALLV
pop
line 1746
;1746:		return;
ADDRGP4 $1022
JUMPV
LABELV $1026
line 1748
;1747:	}
;1748:	for ( i = 0 ; i < level.maxclients ; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $1032
JUMPV
LABELV $1029
line 1749
;1749:		if (level.clients[i].sess.sessionTeam != team)
ADDRLP4 0
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 624
ADDP4
INDIRI4
ADDRFP4 0
INDIRI4
EQI4 $1034
line 1750
;1750:			continue;
ADDRGP4 $1030
JUMPV
LABELV $1034
line 1751
;1751:		if (level.clients[i].sess.teamLeader) {
ADDRLP4 0
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 648
ADDP4
INDIRI4
CNSTI4 0
EQI4 $1036
line 1752
;1752:			level.clients[i].sess.teamLeader = qfalse;
ADDRLP4 0
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 648
ADDP4
CNSTI4 0
ASGNI4
line 1753
;1753:			ClientUserinfoChanged( i );
ADDRLP4 0
INDIRI4
ARGI4
ADDRGP4 ClientUserinfoChanged
CALLI4
pop
line 1754
;1754:		}
LABELV $1036
line 1755
;1755:	}
LABELV $1030
line 1748
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $1032
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $1029
line 1756
;1756:	level.clients[client].sess.teamLeader = qtrue;
ADDRFP4 4
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 648
ADDP4
CNSTI4 1
ASGNI4
line 1757
;1757:	ClientUserinfoChanged( client );
ADDRFP4 4
INDIRI4
ARGI4
ADDRGP4 ClientUserinfoChanged
CALLI4
pop
line 1758
;1758:	PrintTeam( team, va("print \"%s is the new team leader\n\"", level.clients[client].pers.netname) );
ADDRGP4 $1038
ARGP4
ADDRFP4 4
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 508
ADDP4
ARGP4
ADDRLP4 4
ADDRGP4 va
CALLP4
ASGNP4
ADDRFP4 0
INDIRI4
ARGI4
ADDRLP4 4
INDIRP4
ARGP4
ADDRGP4 PrintTeam
CALLV
pop
line 1759
;1759:}
LABELV $1022
endproc SetLeader 8 8
export CheckTeamLeader
proc CheckTeamLeader 28 8
line 1767
;1760:
;1761:
;1762:/*
;1763:==================
;1764:CheckTeamLeader
;1765:==================
;1766:*/
;1767:void CheckTeamLeader( team_t team ) {
line 1772
;1768:	int i;
;1769:	int	max_score, max_id;
;1770:	int	max_bot_score, max_bot_id;
;1771:
;1772:	for ( i = 0 ; i < level.maxclients ; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $1043
JUMPV
LABELV $1040
line 1774
;1773:
;1774:		if ( level.clients[i].sess.sessionTeam != team || level.clients[i].pers.connected == CON_DISCONNECTED )
ADDRLP4 24
ADDRGP4 level
INDIRP4
ASGNP4
ADDRLP4 0
INDIRI4
CNSTI4 1568
MULI4
ADDRLP4 24
INDIRP4
ADDP4
CNSTI4 624
ADDP4
INDIRI4
ADDRFP4 0
INDIRI4
NEI4 $1047
ADDRLP4 0
INDIRI4
CNSTI4 1568
MULI4
ADDRLP4 24
INDIRP4
ADDP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 0
NEI4 $1045
LABELV $1047
line 1775
;1775:			continue;
ADDRGP4 $1041
JUMPV
LABELV $1045
line 1777
;1776:
;1777:		if ( level.clients[i].sess.teamLeader )
ADDRLP4 0
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 648
ADDP4
INDIRI4
CNSTI4 0
EQI4 $1048
line 1778
;1778:			return;
ADDRGP4 $1039
JUMPV
LABELV $1048
line 1779
;1779:	}
LABELV $1041
line 1772
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $1043
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $1040
line 1782
;1780:
;1781:	// no leaders? find player with highest score
;1782:	max_score = SHRT_MIN;
ADDRLP4 4
CNSTI4 -32768
ASGNI4
line 1783
;1783:	max_id = -1;
ADDRLP4 12
CNSTI4 -1
ASGNI4
line 1784
;1784:	max_bot_score = SHRT_MIN;
ADDRLP4 8
CNSTI4 -32768
ASGNI4
line 1785
;1785:	max_bot_id = -1;
ADDRLP4 16
CNSTI4 -1
ASGNI4
line 1787
;1786:
;1787:	for ( i = 0 ; i < level.maxclients ; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $1053
JUMPV
LABELV $1050
line 1789
;1788:
;1789:		if ( level.clients[i].sess.sessionTeam != team )
ADDRLP4 0
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 624
ADDP4
INDIRI4
ADDRFP4 0
INDIRI4
EQI4 $1055
line 1790
;1790:			continue;
ADDRGP4 $1051
JUMPV
LABELV $1055
line 1792
;1791:
;1792:		if ( g_entities[i].r.svFlags & SVF_BOT ) {
ADDRLP4 0
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities+208+216
ADDP4
INDIRI4
CNSTI4 8
BANDI4
CNSTI4 0
EQI4 $1057
line 1793
;1793:			if ( level.clients[i].ps.persistant[PERS_SCORE] > max_bot_score ) {
ADDRLP4 0
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 248
ADDP4
INDIRI4
ADDRLP4 8
INDIRI4
LEI4 $1058
line 1794
;1794:				max_bot_score = level.clients[i].ps.persistant[PERS_SCORE];
ADDRLP4 8
ADDRLP4 0
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 248
ADDP4
INDIRI4
ASGNI4
line 1795
;1795:				max_bot_id = i;
ADDRLP4 16
ADDRLP4 0
INDIRI4
ASGNI4
line 1796
;1796:			}
line 1797
;1797:		} else {
ADDRGP4 $1058
JUMPV
LABELV $1057
line 1798
;1798:			if ( level.clients[i].ps.persistant[PERS_SCORE] > max_score ) {
ADDRLP4 0
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 248
ADDP4
INDIRI4
ADDRLP4 4
INDIRI4
LEI4 $1063
line 1799
;1799:				max_score = level.clients[i].ps.persistant[PERS_SCORE];
ADDRLP4 4
ADDRLP4 0
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 248
ADDP4
INDIRI4
ASGNI4
line 1800
;1800:				max_id = i;
ADDRLP4 12
ADDRLP4 0
INDIRI4
ASGNI4
line 1801
;1801:			}
LABELV $1063
line 1802
;1802:		}
LABELV $1058
line 1803
;1803:	}
LABELV $1051
line 1787
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $1053
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $1050
line 1805
;1804:
;1805:	if ( max_id != -1 ) {
ADDRLP4 12
INDIRI4
CNSTI4 -1
EQI4 $1065
line 1806
;1806:		SetLeader( team, max_id ); 
ADDRFP4 0
INDIRI4
ARGI4
ADDRLP4 12
INDIRI4
ARGI4
ADDRGP4 SetLeader
CALLV
pop
line 1807
;1807:		return;
ADDRGP4 $1039
JUMPV
LABELV $1065
line 1810
;1808:	}
;1809:
;1810:	if ( max_bot_id != -1 ) {
ADDRLP4 16
INDIRI4
CNSTI4 -1
EQI4 $1067
line 1811
;1811:		SetLeader( team, max_bot_id );
ADDRFP4 0
INDIRI4
ARGI4
ADDRLP4 16
INDIRI4
ARGI4
ADDRGP4 SetLeader
CALLV
pop
line 1812
;1812:		return;
LABELV $1067
line 1814
;1813:	}
;1814:}
LABELV $1039
endproc CheckTeamLeader 28 8
proc CheckTeamVote 16 12
line 1822
;1815:
;1816:
;1817:/*
;1818:==================
;1819:CheckTeamVote
;1820:==================
;1821:*/
;1822:static void CheckTeamVote( team_t team ) {
line 1825
;1823:	int cs_offset;
;1824:
;1825:	if ( team == TEAM_RED )
ADDRFP4 0
INDIRI4
CNSTI4 1
NEI4 $1070
line 1826
;1826:		cs_offset = 0;
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $1071
JUMPV
LABELV $1070
line 1827
;1827:	else if ( team == TEAM_BLUE )
ADDRFP4 0
INDIRI4
CNSTI4 2
NEI4 $1069
line 1828
;1828:		cs_offset = 1;
ADDRLP4 0
CNSTI4 1
ASGNI4
line 1830
;1829:	else
;1830:		return;
LABELV $1073
LABELV $1071
line 1832
;1831:
;1832:	if ( !level.teamVoteTime[cs_offset] ) {
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+2940
ADDP4
INDIRI4
CNSTI4 0
NEI4 $1074
line 1833
;1833:		return;
ADDRGP4 $1069
JUMPV
LABELV $1074
line 1835
;1834:	}
;1835:	if ( level.time - level.teamVoteTime[cs_offset] >= VOTE_TIME ) {
ADDRGP4 level+32
INDIRI4
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+2940
ADDP4
INDIRI4
SUBI4
CNSTI4 30000
LTI4 $1077
line 1836
;1836:		G_BroadcastServerCommand( -1, "print \"Team vote failed.\n\"" );
CNSTI4 -1
ARGI4
ADDRGP4 $1081
ARGP4
ADDRGP4 G_BroadcastServerCommand
CALLV
pop
line 1837
;1837:	} else {
ADDRGP4 $1078
JUMPV
LABELV $1077
line 1838
;1838:		if ( level.teamVoteYes[cs_offset] > level.numteamVotingClients[cs_offset]/2 ) {
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+2948
ADDP4
INDIRI4
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+2964
ADDP4
INDIRI4
CNSTI4 2
DIVI4
LEI4 $1082
line 1840
;1839:			// execute the command, then remove the vote
;1840:			G_BroadcastServerCommand( -1, "print \"Team vote passed.\n\"" );
CNSTI4 -1
ARGI4
ADDRGP4 $1086
ARGP4
ADDRGP4 G_BroadcastServerCommand
CALLV
pop
line 1842
;1841:			//
;1842:			if ( !Q_strncmp( "leader", level.teamVoteString[cs_offset], 6) ) {
ADDRGP4 $1089
ARGP4
ADDRLP4 0
INDIRI4
CNSTI4 10
LSHI4
ADDRGP4 level+892
ADDP4
ARGP4
CNSTI4 6
ARGI4
ADDRLP4 8
ADDRGP4 Q_strncmp
CALLI4
ASGNI4
ADDRLP4 8
INDIRI4
CNSTI4 0
NEI4 $1087
line 1844
;1843:				//set the team leader
;1844:				SetLeader(team, atoi(level.teamVoteString[cs_offset] + 7));
ADDRLP4 0
INDIRI4
CNSTI4 10
LSHI4
ADDRGP4 level+892+7
ADDP4
ARGP4
ADDRLP4 12
ADDRGP4 atoi
CALLI4
ASGNI4
ADDRFP4 0
INDIRI4
ARGI4
ADDRLP4 12
INDIRI4
ARGI4
ADDRGP4 SetLeader
CALLV
pop
line 1845
;1845:			}
ADDRGP4 $1083
JUMPV
LABELV $1087
line 1846
;1846:			else {
line 1847
;1847:				trap_SendConsoleCommand( EXEC_APPEND, va("%s\n", level.teamVoteString[cs_offset] ) );
ADDRGP4 $990
ARGP4
ADDRLP4 0
INDIRI4
CNSTI4 10
LSHI4
ADDRGP4 level+892
ADDP4
ARGP4
ADDRLP4 12
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 2
ARGI4
ADDRLP4 12
INDIRP4
ARGP4
ADDRGP4 trap_SendConsoleCommand
CALLV
pop
line 1848
;1848:			}
line 1849
;1849:		} else if ( level.teamVoteNo[cs_offset] >= level.numteamVotingClients[cs_offset]/2 ) {
ADDRGP4 $1083
JUMPV
LABELV $1082
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+2956
ADDP4
INDIRI4
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+2964
ADDP4
INDIRI4
CNSTI4 2
DIVI4
LTI4 $1069
line 1851
;1850:			// same behavior as a timeout
;1851:			G_BroadcastServerCommand( -1, "print \"Team vote failed.\n\"" );
CNSTI4 -1
ARGI4
ADDRGP4 $1081
ARGP4
ADDRGP4 G_BroadcastServerCommand
CALLV
pop
line 1852
;1852:		} else {
line 1854
;1853:			// still waiting for a majority
;1854:			return;
LABELV $1095
LABELV $1083
line 1856
;1855:		}
;1856:	}
LABELV $1078
line 1857
;1857:	level.teamVoteTime[cs_offset] = 0;
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+2940
ADDP4
CNSTI4 0
ASGNI4
line 1858
;1858:	trap_SetConfigstring( CS_TEAMVOTE_TIME + cs_offset, "" );
ADDRLP4 0
INDIRI4
CNSTI4 12
ADDI4
ARGI4
ADDRGP4 $60
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1860
;1859:
;1860:}
LABELV $1069
endproc CheckTeamVote 16 12
data
align 4
LABELV $1100
byte 4 -1
export CheckCvars
code
proc CheckCvars 4 8
line 1868
;1861:
;1862:
;1863:/*
;1864:==================
;1865:CheckCvars
;1866:==================
;1867:*/
;1868:void CheckCvars( void ) {
line 1871
;1869:	static int lastMod = -1;
;1870:
;1871:	if ( lastMod != g_password.modificationCount ) {
ADDRGP4 $1100
INDIRI4
ADDRGP4 g_password+4
INDIRI4
EQI4 $1101
line 1872
;1872:		lastMod = g_password.modificationCount;
ADDRGP4 $1100
ADDRGP4 g_password+4
INDIRI4
ASGNI4
line 1873
;1873:		if ( g_password.string[0] && Q_stricmp( g_password.string, "none" ) != 0 ) {
ADDRGP4 g_password+16
INDIRI1
CVII4 1
CNSTI4 0
EQI4 $1105
ADDRGP4 g_password+16
ARGP4
ADDRGP4 $1109
ARGP4
ADDRLP4 0
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 0
INDIRI4
CNSTI4 0
EQI4 $1105
line 1874
;1874:			trap_Cvar_Set( "g_needpass", "1" );
ADDRGP4 $86
ARGP4
ADDRGP4 $77
ARGP4
ADDRGP4 trap_Cvar_Set
CALLV
pop
line 1875
;1875:		} else {
ADDRGP4 $1106
JUMPV
LABELV $1105
line 1876
;1876:			trap_Cvar_Set( "g_needpass", "0" );
ADDRGP4 $86
ARGP4
ADDRGP4 $65
ARGP4
ADDRGP4 trap_Cvar_Set
CALLV
pop
line 1877
;1877:		}
LABELV $1106
line 1878
;1878:	}
LABELV $1101
line 1879
;1879:}
LABELV $1099
endproc CheckCvars 4 8
export G_RunThink
proc G_RunThink 8 4
line 1889
;1880:
;1881:
;1882:/*
;1883:=============
;1884:G_RunThink
;1885:
;1886:Runs thinking code for this frame if necessary
;1887:=============
;1888:*/
;1889:void G_RunThink( gentity_t *ent ) {
line 1892
;1890:	int	thinktime;
;1891:
;1892:	thinktime = ent->nextthink;
ADDRLP4 0
ADDRFP4 0
INDIRP4
CNSTI4 688
ADDP4
INDIRI4
ASGNI4
line 1893
;1893:	if (thinktime <= 0) {
ADDRLP4 0
INDIRI4
CNSTI4 0
GTI4 $1111
line 1894
;1894:		return;
ADDRGP4 $1110
JUMPV
LABELV $1111
line 1896
;1895:	}
;1896:	if (thinktime > level.time) {
ADDRLP4 0
INDIRI4
ADDRGP4 level+32
INDIRI4
LEI4 $1113
line 1897
;1897:		return;
ADDRGP4 $1110
JUMPV
LABELV $1113
line 1900
;1898:	}
;1899:	
;1900:	ent->nextthink = 0;
ADDRFP4 0
INDIRP4
CNSTI4 688
ADDP4
CNSTI4 0
ASGNI4
line 1901
;1901:	if ( !ent->think ) {
ADDRFP4 0
INDIRP4
CNSTI4 692
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $1116
line 1902
;1902:		G_Error ( "NULL ent->think");
ADDRGP4 $1118
ARGP4
ADDRGP4 G_Error
CALLV
pop
line 1903
;1903:	} else {
ADDRGP4 $1117
JUMPV
LABELV $1116
line 1904
;1904:		ent->think (ent);
ADDRLP4 4
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 4
INDIRP4
ARGP4
ADDRLP4 4
INDIRP4
CNSTI4 692
ADDP4
INDIRP4
CALLV
pop
line 1905
;1905:	}
LABELV $1117
line 1906
;1906:}
LABELV $1110
endproc G_RunThink 8 4
bss
align 4
LABELV $1120
skip 3840
data
align 4
LABELV $1121
byte 4 0
align 4
LABELV $1122
byte 4 3000
code
proc G_RunFrame 32 12
line 1916
;1907:
;1908:
;1909:/*
;1910:================
;1911:G_RunFrame
;1912:
;1913:Advances the non-player objects in the world
;1914:================
;1915:*/
;1916:static void G_RunFrame(int levelTime) {
line 1926
;1917:	int i;
;1918:	gentity_t* ent;
;1919:	gclient_t* client;
;1920:	static gentity_t* missiles[MAX_GENTITIES - MAX_CLIENTS];
;1921:	int numMissiles;
;1922:	static int lastTeamBalanceCheck = 0; // Add static variable to track the last balance check time
;1923:	static const int teamBalanceInterval = 3000; // 3000 milliseconds (3 seconds)
;1924:
;1925:	// if we are waiting for the level to restart, do nothing
;1926:	if (level.restarted) {
ADDRGP4 level+72
INDIRI4
CNSTI4 0
EQI4 $1123
line 1927
;1927:		return;
ADDRGP4 $1119
JUMPV
LABELV $1123
line 1930
;1928:	}
;1929:
;1930:	level.framenum++;
ADDRLP4 16
ADDRGP4 level+28
ASGNP4
ADDRLP4 16
INDIRP4
ADDRLP4 16
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 1931
;1931:	level.previousTime = level.time;
ADDRGP4 level+36
ADDRGP4 level+32
INDIRI4
ASGNI4
line 1932
;1932:	level.time = levelTime;
ADDRGP4 level+32
ADDRFP4 0
INDIRI4
ASGNI4
line 1933
;1933:	level.msec = level.time - level.previousTime;
ADDRGP4 level+44
ADDRGP4 level+32
INDIRI4
ADDRGP4 level+36
INDIRI4
SUBI4
ASGNI4
line 1936
;1934:
;1935:	// get any cvar changes
;1936:	G_UpdateCvars();
ADDRGP4 G_UpdateCvars
CALLV
pop
line 1938
;1937:
;1938:	numMissiles = 0;
ADDRLP4 8
CNSTI4 0
ASGNI4
line 1943
;1939:
;1940:	//
;1941:	// go through all allocated objects
;1942:	//
;1943:	ent = &g_entities[0];
ADDRLP4 0
ADDRGP4 g_entities
ASGNP4
line 1944
;1944:	for (i = 0; i < level.num_entities; i++, ent++) {
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRGP4 $1136
JUMPV
LABELV $1133
line 1945
;1945:		if (!ent->inuse) {
ADDRLP4 0
INDIRP4
CNSTI4 520
ADDP4
INDIRI4
CNSTI4 0
NEI4 $1138
line 1946
;1946:			continue;
ADDRGP4 $1134
JUMPV
LABELV $1138
line 1950
;1947:		}
;1948:
;1949:		// clear events that are too old
;1950:		if (level.time - ent->eventTime > EVENT_VALID_MSEC) {
ADDRGP4 level+32
INDIRI4
ADDRLP4 0
INDIRP4
CNSTI4 552
ADDP4
INDIRI4
SUBI4
CNSTI4 300
LEI4 $1140
line 1951
;1951:			if (ent->s.event) {
ADDRLP4 0
INDIRP4
CNSTI4 180
ADDP4
INDIRI4
CNSTI4 0
EQI4 $1143
line 1952
;1952:				ent->s.event = 0; // &= EV_EVENT_BITS;
ADDRLP4 0
INDIRP4
CNSTI4 180
ADDP4
CNSTI4 0
ASGNI4
line 1953
;1953:				if (ent->client) {
ADDRLP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $1145
line 1954
;1954:					ent->client->ps.externalEvent = 0;
ADDRLP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 128
ADDP4
CNSTI4 0
ASGNI4
line 1958
;1955:					// predicted events should never be set to zero
;1956:					// ent->client->ps.events[0] = 0;
;1957:					// ent->client->ps.events[1] = 0;
;1958:				}
LABELV $1145
line 1959
;1959:			}
LABELV $1143
line 1960
;1960:			if (ent->freeAfterEvent) {
ADDRLP4 0
INDIRP4
CNSTI4 556
ADDP4
INDIRI4
CNSTI4 0
EQI4 $1147
line 1962
;1961:				// tempEntities or dropped items completely go away after their event
;1962:				G_FreeEntity(ent);
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 G_FreeEntity
CALLV
pop
line 1963
;1963:				continue;
ADDRGP4 $1134
JUMPV
LABELV $1147
line 1965
;1964:			}
;1965:			else if (ent->unlinkAfterEvent) {
ADDRLP4 0
INDIRP4
CNSTI4 560
ADDP4
INDIRI4
CNSTI4 0
EQI4 $1149
line 1967
;1966:				// items that will respawn will hide themselves after their pickup event
;1967:				ent->unlinkAfterEvent = qfalse;
ADDRLP4 0
INDIRP4
CNSTI4 560
ADDP4
CNSTI4 0
ASGNI4
line 1968
;1968:				trap_UnlinkEntity(ent);
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 trap_UnlinkEntity
CALLV
pop
line 1969
;1969:			}
LABELV $1149
line 1970
;1970:		}
LABELV $1140
line 1973
;1971:
;1972:		// temporary entities don't think
;1973:		if (ent->freeAfterEvent) {
ADDRLP4 0
INDIRP4
CNSTI4 556
ADDP4
INDIRI4
CNSTI4 0
EQI4 $1151
line 1974
;1974:			continue;
ADDRGP4 $1134
JUMPV
LABELV $1151
line 1977
;1975:		}
;1976:
;1977:		if (!ent->r.linked && ent->neverFree) {
ADDRLP4 0
INDIRP4
CNSTI4 416
ADDP4
INDIRI4
CNSTI4 0
NEI4 $1153
ADDRLP4 0
INDIRP4
CNSTI4 532
ADDP4
INDIRI4
CNSTI4 0
EQI4 $1153
line 1978
;1978:			continue;
ADDRGP4 $1134
JUMPV
LABELV $1153
line 1981
;1979:		}
;1980:
;1981:		if (ent->s.eType == ET_MISSILE) {
ADDRLP4 0
INDIRP4
CNSTI4 4
ADDP4
INDIRI4
CNSTI4 3
NEI4 $1155
line 1983
;1982:			// queue for unlagged pass
;1983:			missiles[numMissiles] = ent;
ADDRLP4 8
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 $1120
ADDP4
ADDRLP4 0
INDIRP4
ASGNP4
line 1984
;1984:			numMissiles++;
ADDRLP4 8
ADDRLP4 8
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 1985
;1985:			continue;
ADDRGP4 $1134
JUMPV
LABELV $1155
line 1988
;1986:		}
;1987:
;1988:		if (ent->s.eType == ET_ITEM || ent->physicsObject) {
ADDRLP4 0
INDIRP4
CNSTI4 4
ADDP4
INDIRI4
CNSTI4 2
EQI4 $1159
ADDRLP4 0
INDIRP4
CNSTI4 564
ADDP4
INDIRI4
CNSTI4 0
EQI4 $1157
LABELV $1159
line 1989
;1989:			G_RunItem(ent);
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 G_RunItem
CALLV
pop
line 1990
;1990:			continue;
ADDRGP4 $1134
JUMPV
LABELV $1157
line 1993
;1991:		}
;1992:
;1993:		if (ent->s.eType == ET_MOVER) {
ADDRLP4 0
INDIRP4
CNSTI4 4
ADDP4
INDIRI4
CNSTI4 4
NEI4 $1160
line 1994
;1994:			G_RunMover(ent);
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 G_RunMover
CALLV
pop
line 1995
;1995:			continue;
ADDRGP4 $1134
JUMPV
LABELV $1160
line 1998
;1996:		}
;1997:
;1998:		if (i < MAX_CLIENTS) {
ADDRLP4 4
INDIRI4
CNSTI4 64
GEI4 $1162
line 1999
;1999:			client = ent->client;
ADDRLP4 12
ADDRLP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
ASGNP4
line 2000
;2000:			client->sess.spectatorTime += level.msec;
ADDRLP4 28
ADDRLP4 12
INDIRP4
CNSTI4 628
ADDP4
ASGNP4
ADDRLP4 28
INDIRP4
ADDRLP4 28
INDIRP4
INDIRI4
ADDRGP4 level+44
INDIRI4
ADDI4
ASGNI4
line 2001
;2001:			if (client->pers.connected == CON_CONNECTED)
ADDRLP4 12
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
NEI4 $1134
line 2002
;2002:				G_RunClient(ent);
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 G_RunClient
CALLV
pop
line 2003
;2003:			continue;
ADDRGP4 $1134
JUMPV
LABELV $1162
line 2006
;2004:		}
;2005:
;2006:		G_RunThink(ent);
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 G_RunThink
CALLV
pop
line 2007
;2007:	}
LABELV $1134
line 1944
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 0
ADDRLP4 0
INDIRP4
CNSTI4 816
ADDP4
ASGNP4
LABELV $1136
ADDRLP4 4
INDIRI4
ADDRGP4 level+12
INDIRI4
LTI4 $1133
line 2009
;2008:
;2009:	if (numMissiles) {
ADDRLP4 8
INDIRI4
CNSTI4 0
EQI4 $1167
line 2011
;2010:		// unlagged
;2011:		G_TimeShiftAllClients(level.previousTime, NULL);
ADDRGP4 level+36
INDIRI4
ARGI4
CNSTP4 0
ARGP4
ADDRGP4 G_TimeShiftAllClients
CALLV
pop
line 2013
;2012:		// run missiles
;2013:		for (i = 0; i < numMissiles; i++)
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRGP4 $1173
JUMPV
LABELV $1170
line 2014
;2014:			G_RunMissile(missiles[i]);
ADDRLP4 4
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 $1120
ADDP4
INDIRP4
ARGP4
ADDRGP4 G_RunMissile
CALLV
pop
LABELV $1171
line 2013
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $1173
ADDRLP4 4
INDIRI4
ADDRLP4 8
INDIRI4
LTI4 $1170
line 2016
;2015:		// unlagged
;2016:		G_UnTimeShiftAllClients(NULL);
CNSTP4 0
ARGP4
ADDRGP4 G_UnTimeShiftAllClients
CALLV
pop
line 2017
;2017:	}
LABELV $1167
line 2020
;2018:
;2019:	// perform final fixups on the players
;2020:	ent = &g_entities[0];
ADDRLP4 0
ADDRGP4 g_entities
ASGNP4
line 2021
;2021:	for (i = 0; i < level.maxclients; i++, ent++) {
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRGP4 $1177
JUMPV
LABELV $1174
line 2022
;2022:		if (ent->inuse) {
ADDRLP4 0
INDIRP4
CNSTI4 520
ADDP4
INDIRI4
CNSTI4 0
EQI4 $1179
line 2023
;2023:			ClientEndFrame(ent);
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 ClientEndFrame
CALLV
pop
line 2024
;2024:		}
LABELV $1179
line 2025
;2025:	}
LABELV $1175
line 2021
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 0
ADDRLP4 0
INDIRP4
CNSTI4 816
ADDP4
ASGNP4
LABELV $1177
ADDRLP4 4
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $1174
line 2028
;2026:
;2027:	// see if it is time to do a tournement restart
;2028:	CheckTournament();
ADDRGP4 CheckTournament
CALLV
pop
line 2031
;2029:
;2030:	// see if it is time to end the level
;2031:	CheckExitRules();
ADDRGP4 CheckExitRules
CALLV
pop
line 2034
;2032:
;2033:	// update to team status?
;2034:	CheckTeamStatus();
ADDRGP4 CheckTeamStatus
CALLV
pop
line 2037
;2035:
;2036:	// cancel vote if timed out
;2037:	CheckVote();
ADDRGP4 CheckVote
CALLV
pop
line 2040
;2038:
;2039:	// check team votes
;2040:	CheckTeamVote(TEAM_RED);
CNSTI4 1
ARGI4
ADDRGP4 CheckTeamVote
CALLV
pop
line 2041
;2041:	CheckTeamVote(TEAM_BLUE);
CNSTI4 2
ARGI4
ADDRGP4 CheckTeamVote
CALLV
pop
line 2044
;2042:
;2043:	// for tracking changes
;2044:	CheckCvars();
ADDRGP4 CheckCvars
CALLV
pop
line 2046
;2045:
;2046:	if (g_listEntity.integer) {
ADDRGP4 g_listEntity+12
INDIRI4
CNSTI4 0
EQI4 $1181
line 2047
;2047:		for (i = 0; i < MAX_GENTITIES; i++) {
ADDRLP4 4
CNSTI4 0
ASGNI4
LABELV $1184
line 2048
;2048:			G_Printf("%4i: %s\n", i, g_entities[i].classname);
ADDRGP4 $1188
ARGP4
ADDRLP4 4
INDIRI4
ARGI4
ADDRLP4 4
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities+524
ADDP4
INDIRP4
ARGP4
ADDRGP4 G_Printf
CALLV
pop
line 2049
;2049:		}
LABELV $1185
line 2047
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 4
INDIRI4
CNSTI4 1024
LTI4 $1184
line 2050
;2050:		trap_Cvar_Set("g_listEntity", "0");
ADDRGP4 $111
ARGP4
ADDRGP4 $65
ARGP4
ADDRGP4 trap_Cvar_Set
CALLV
pop
line 2051
;2051:	}
LABELV $1181
line 2054
;2052:
;2053:	// unlagged
;2054:	level.frameStartTime = trap_Milliseconds();
ADDRLP4 20
ADDRGP4 trap_Milliseconds
CALLI4
ASGNI4
ADDRGP4 level+11800
ADDRLP4 20
INDIRI4
ASGNI4
line 2057
;2055:
;2056:	// Check and balance teams periodically
;2057:	if (level.time - lastTeamBalanceCheck >= teamBalanceInterval) {
ADDRGP4 level+32
INDIRI4
ADDRGP4 $1121
INDIRI4
SUBI4
ADDRGP4 $1122
INDIRI4
LTI4 $1191
line 2058
;2058:		G_CheckTeamBalance();
ADDRGP4 G_CheckTeamBalance
CALLV
pop
line 2059
;2059:		lastTeamBalanceCheck = level.time;
ADDRGP4 $1121
ADDRGP4 level+32
INDIRI4
ASGNI4
line 2060
;2060:	}
LABELV $1191
line 2061
;2061:}
LABELV $1119
endproc G_RunFrame 32 12
export G_InitTeamBalance
proc G_InitTeamBalance 0 4
line 2071
;2062:
;2063:
;2064:/*
;2065:================
;2066:TeamBalance
;2067:================
;2068:*/
;2069:
;2070:// Function to initialize team balance
;2071:void G_InitTeamBalance(void) {
line 2073
;2072:	// Initialization code for team balancing
;2073:	trap_Print("Team balance initialized\n");
ADDRGP4 $1196
ARGP4
ADDRGP4 trap_Print
CALLV
pop
line 2074
;2074:}
LABELV $1195
endproc G_InitTeamBalance 0 4
export G_CheckTeamBalance
proc G_CheckTeamBalance 16 12
line 2086
;2075:
;2076:typedef struct {
;2077:	int clientNum;
;2078:	int kills;
;2079:	int timeInMatch;
;2080:} playerInfo_t;
;2081:
;2082:int ComparePlayers(const void* a, const void* b);
;2083:
;2084:void balanceTeams(team_t fromTeam, team_t toTeam);
;2085:
;2086:void G_CheckTeamBalance(void) {
line 2087
;2087:	int team1HumanCount = 0;
ADDRLP4 8
CNSTI4 0
ASGNI4
line 2088
;2088:	int team2HumanCount = 0;
ADDRLP4 12
CNSTI4 0
ASGNI4
line 2093
;2089:	int i;
;2090:	gclient_t* client;
;2091:
;2092:	// Count human players in each team
;2093:	for (i = 0; i < level.maxclients; i++) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $1202
JUMPV
LABELV $1199
line 2094
;2094:		client = &level.clients[i];
ADDRLP4 4
ADDRLP4 0
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 2095
;2095:		if (client->pers.connected != CON_CONNECTED || (g_entities[i].r.svFlags & SVF_BOT)) {
ADDRLP4 4
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
NEI4 $1208
ADDRLP4 0
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities+208+216
ADDP4
INDIRI4
CNSTI4 8
BANDI4
CNSTI4 0
EQI4 $1204
LABELV $1208
line 2096
;2096:			continue;
ADDRGP4 $1200
JUMPV
LABELV $1204
line 2099
;2097:		}
;2098:
;2099:		if (client->sess.sessionTeam == TEAM_RED) {
ADDRLP4 4
INDIRP4
CNSTI4 624
ADDP4
INDIRI4
CNSTI4 1
NEI4 $1209
line 2100
;2100:			team1HumanCount++;
ADDRLP4 8
ADDRLP4 8
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 2101
;2101:		}
ADDRGP4 $1210
JUMPV
LABELV $1209
line 2102
;2102:		else if (client->sess.sessionTeam == TEAM_BLUE) {
ADDRLP4 4
INDIRP4
CNSTI4 624
ADDP4
INDIRI4
CNSTI4 2
NEI4 $1211
line 2103
;2103:			team2HumanCount++;
ADDRLP4 12
ADDRLP4 12
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 2104
;2104:		}
LABELV $1211
LABELV $1210
line 2105
;2105:	}
LABELV $1200
line 2093
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $1202
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $1199
line 2108
;2106:
;2107:	// Log the human player counts for debugging
;2108:	G_Printf("Team Balance Check: Red Team Humans = %d, Blue Team Humans = %d\n", team1HumanCount, team2HumanCount);
ADDRGP4 $1213
ARGP4
ADDRLP4 8
INDIRI4
ARGI4
ADDRLP4 12
INDIRI4
ARGI4
ADDRGP4 G_Printf
CALLV
pop
line 2111
;2109:
;2110:	// Balance logic
;2111:	if (team1HumanCount > team2HumanCount + 1) {
ADDRLP4 8
INDIRI4
ADDRLP4 12
INDIRI4
CNSTI4 1
ADDI4
LEI4 $1214
line 2113
;2112:		// Move a human player from team 1 to team 2
;2113:		for (i = 0; i < level.maxclients; i++) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $1219
JUMPV
LABELV $1216
line 2114
;2114:			client = &level.clients[i];
ADDRLP4 4
ADDRLP4 0
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 2115
;2115:			if (client->sess.sessionTeam == TEAM_RED && !(g_entities[i].r.svFlags & SVF_BOT)) {
ADDRLP4 4
INDIRP4
CNSTI4 624
ADDP4
INDIRI4
CNSTI4 1
NEI4 $1221
ADDRLP4 0
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities+208+216
ADDP4
INDIRI4
CNSTI4 8
BANDI4
CNSTI4 0
NEI4 $1221
line 2116
;2116:				G_Printf("Switching Player %d from Red to Blue\n", i);
ADDRGP4 $1225
ARGP4
ADDRLP4 0
INDIRI4
ARGI4
ADDRGP4 G_Printf
CALLV
pop
line 2117
;2117:				SetTeam(&g_entities[i], "blue");
ADDRLP4 0
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities
ADDP4
ARGP4
ADDRGP4 $1226
ARGP4
ADDRGP4 SetTeam
CALLI4
pop
line 2118
;2118:				break;
ADDRGP4 $1215
JUMPV
LABELV $1221
line 2120
;2119:			}
;2120:		}
LABELV $1217
line 2113
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $1219
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $1216
line 2121
;2121:	}
ADDRGP4 $1215
JUMPV
LABELV $1214
line 2122
;2122:	else if (team2HumanCount > team1HumanCount + 1) {
ADDRLP4 12
INDIRI4
ADDRLP4 8
INDIRI4
CNSTI4 1
ADDI4
LEI4 $1227
line 2124
;2123:		// Move a human player from team 2 to team 1
;2124:		for (i = 0; i < level.maxclients; i++) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $1232
JUMPV
LABELV $1229
line 2125
;2125:			client = &level.clients[i];
ADDRLP4 4
ADDRLP4 0
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 2126
;2126:			if (client->sess.sessionTeam == TEAM_BLUE && !(g_entities[i].r.svFlags & SVF_BOT)) {
ADDRLP4 4
INDIRP4
CNSTI4 624
ADDP4
INDIRI4
CNSTI4 2
NEI4 $1234
ADDRLP4 0
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities+208+216
ADDP4
INDIRI4
CNSTI4 8
BANDI4
CNSTI4 0
NEI4 $1234
line 2127
;2127:				G_Printf("Switching Player %d from Blue to Red\n", i);
ADDRGP4 $1238
ARGP4
ADDRLP4 0
INDIRI4
ARGI4
ADDRGP4 G_Printf
CALLV
pop
line 2128
;2128:				SetTeam(&g_entities[i], "red");
ADDRLP4 0
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities
ADDP4
ARGP4
ADDRGP4 $1239
ARGP4
ADDRGP4 SetTeam
CALLI4
pop
line 2129
;2129:				break;
ADDRGP4 $1231
JUMPV
LABELV $1234
line 2131
;2130:			}
;2131:		}
LABELV $1230
line 2124
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $1232
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $1229
LABELV $1231
line 2132
;2132:	}
LABELV $1227
LABELV $1215
line 2134
;2133:
;2134:	trap_Print("Checking team balance\n");
ADDRGP4 $1240
ARGP4
ADDRGP4 trap_Print
CALLV
pop
line 2135
;2135:}
LABELV $1198
endproc G_CheckTeamBalance 16 12
export balanceTeams
proc balanceTeams 784 16
line 2137
;2136:
;2137:void balanceTeams(team_t fromTeam, team_t toTeam) {
line 2141
;2138:	int i;
;2139:	gclient_t* client;
;2140:	playerInfo_t players[MAX_CLIENTS];
;2141:	int playerCount = 0;
ADDRLP4 8
CNSTI4 0
ASGNI4
line 2145
;2142:	int playerToSwitch;
;2143:
;2144:	// Gather player data from the team with more players
;2145:	for (i = 0; i < level.maxclients; i++) {
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRGP4 $1245
JUMPV
LABELV $1242
line 2146
;2146:		client = &level.clients[i];
ADDRLP4 0
ADDRLP4 4
INDIRI4
CNSTI4 1568
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 2147
;2147:		if (client->pers.connected != CON_CONNECTED) {
ADDRLP4 0
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
EQI4 $1247
line 2148
;2148:			continue;
ADDRGP4 $1243
JUMPV
LABELV $1247
line 2151
;2149:		}
;2150:
;2151:		if (client->sess.sessionTeam == fromTeam) {
ADDRLP4 0
INDIRP4
CNSTI4 624
ADDP4
INDIRI4
ADDRFP4 0
INDIRI4
NEI4 $1249
line 2152
;2152:			players[playerCount].clientNum = i;
ADDRLP4 8
INDIRI4
CNSTI4 12
MULI4
ADDRLP4 12
ADDP4
ADDRLP4 4
INDIRI4
ASGNI4
line 2153
;2153:			players[playerCount].kills = client->ps.persistant[PERS_SCORE];
ADDRLP4 8
INDIRI4
CNSTI4 12
MULI4
ADDRLP4 12+4
ADDP4
ADDRLP4 0
INDIRP4
CNSTI4 248
ADDP4
INDIRI4
ASGNI4
line 2154
;2154:			players[playerCount].timeInMatch = level.time - client->pers.enterTime;
ADDRLP4 8
INDIRI4
CNSTI4 12
MULI4
ADDRLP4 12+8
ADDP4
ADDRGP4 level+32
INDIRI4
ADDRLP4 0
INDIRP4
CNSTI4 548
ADDP4
INDIRI4
SUBI4
ASGNI4
line 2155
;2155:			playerCount++;
ADDRLP4 8
ADDRLP4 8
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 2156
;2156:		}
LABELV $1249
line 2157
;2157:	}
LABELV $1243
line 2145
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $1245
ADDRLP4 4
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $1242
line 2160
;2158:
;2159:	// Sort the array of players
;2160:	qsort(players, playerCount, sizeof(playerInfo_t), ComparePlayers);
ADDRLP4 12
ARGP4
ADDRLP4 8
INDIRI4
ARGI4
CNSTI4 12
ARGI4
ADDRGP4 ComparePlayers
ARGP4
ADDRGP4 qsort
CALLV
pop
line 2163
;2161:
;2162:	// Ensure playerCount is greater than 0 before accessing the array
;2163:	if (playerCount > 0) {
ADDRLP4 8
INDIRI4
CNSTI4 0
LEI4 $1254
line 2165
;2164:		// Select the player with the fewest kills and least time spent in the match
;2165:		playerToSwitch = players[playerCount - 1].clientNum;
ADDRLP4 780
ADDRLP4 8
INDIRI4
CNSTI4 12
MULI4
ADDRLP4 12-12
ADDP4
INDIRI4
ASGNI4
line 2168
;2166:
;2167:		// Switch the player to the team with fewer players
;2168:		if (fromTeam == TEAM_RED) {
ADDRFP4 0
INDIRI4
CNSTI4 1
NEI4 $1257
line 2169
;2169:			SetTeam(&g_entities[playerToSwitch], "blue");
ADDRLP4 780
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities
ADDP4
ARGP4
ADDRGP4 $1226
ARGP4
ADDRGP4 SetTeam
CALLI4
pop
line 2170
;2170:		}
ADDRGP4 $1258
JUMPV
LABELV $1257
line 2171
;2171:		else {
line 2172
;2172:			SetTeam(&g_entities[playerToSwitch], "red");
ADDRLP4 780
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities
ADDP4
ARGP4
ADDRGP4 $1239
ARGP4
ADDRGP4 SetTeam
CALLI4
pop
line 2173
;2173:		}
LABELV $1258
line 2174
;2174:	}
LABELV $1254
line 2175
;2175:}
LABELV $1241
endproc balanceTeams 784 16
export ComparePlayers
proc ComparePlayers 8 0
line 2177
;2176:
;2177:int ComparePlayers(const void* a, const void* b) {
line 2178
;2178:	const playerInfo_t* playerA = (const playerInfo_t*)a;
ADDRLP4 0
ADDRFP4 0
INDIRP4
ASGNP4
line 2179
;2179:	const playerInfo_t* playerB = (const playerInfo_t*)b;
ADDRLP4 4
ADDRFP4 4
INDIRP4
ASGNP4
line 2181
;2180:
;2181:	if (playerA->kills != playerB->kills) {
ADDRLP4 0
INDIRP4
CNSTI4 4
ADDP4
INDIRI4
ADDRLP4 4
INDIRP4
CNSTI4 4
ADDP4
INDIRI4
EQI4 $1260
line 2182
;2182:		return playerB->kills - playerA->kills;
ADDRLP4 4
INDIRP4
CNSTI4 4
ADDP4
INDIRI4
ADDRLP4 0
INDIRP4
CNSTI4 4
ADDP4
INDIRI4
SUBI4
RETI4
ADDRGP4 $1259
JUMPV
LABELV $1260
line 2184
;2183:	}
;2184:	return playerA->timeInMatch - playerB->timeInMatch;
ADDRLP4 0
INDIRP4
CNSTI4 8
ADDP4
INDIRI4
ADDRLP4 4
INDIRP4
CNSTI4 8
ADDP4
INDIRI4
SUBI4
RETI4
LABELV $1259
endproc ComparePlayers 8 0
import ShuffleTeams
bss
export trap_GetValue
align 4
LABELV trap_GetValue
skip 4
export g_clients
align 4
LABELV g_clients
skip 100352
export svf_self_portal2
align 4
LABELV svf_self_portal2
skip 4
import trap_SnapVector
import trap_GeneticParentsAndChildSelection
import trap_BotResetWeaponState
import trap_BotFreeWeaponState
import trap_BotAllocWeaponState
import trap_BotLoadWeaponWeights
import trap_BotGetWeaponInfo
import trap_BotChooseBestFightWeapon
import trap_BotAddAvoidSpot
import trap_BotInitMoveState
import trap_BotFreeMoveState
import trap_BotAllocMoveState
import trap_BotPredictVisiblePosition
import trap_BotMovementViewTarget
import trap_BotReachabilityArea
import trap_BotResetLastAvoidReach
import trap_BotResetAvoidReach
import trap_BotMoveInDirection
import trap_BotMoveToGoal
import trap_BotResetMoveState
import trap_BotFreeGoalState
import trap_BotAllocGoalState
import trap_BotMutateGoalFuzzyLogic
import trap_BotSaveGoalFuzzyLogic
import trap_BotInterbreedGoalFuzzyLogic
import trap_BotFreeItemWeights
import trap_BotLoadItemWeights
import trap_BotUpdateEntityItems
import trap_BotInitLevelItems
import trap_BotSetAvoidGoalTime
import trap_BotAvoidGoalTime
import trap_BotGetLevelItemGoal
import trap_BotGetMapLocationGoal
import trap_BotGetNextCampSpotGoal
import trap_BotItemGoalInVisButNotVisible
import trap_BotTouchingGoal
import trap_BotChooseNBGItem
import trap_BotChooseLTGItem
import trap_BotGetSecondGoal
import trap_BotGetTopGoal
import trap_BotGoalName
import trap_BotDumpGoalStack
import trap_BotDumpAvoidGoals
import trap_BotEmptyGoalStack
import trap_BotPopGoal
import trap_BotPushGoal
import trap_BotResetAvoidGoals
import trap_BotRemoveFromAvoidGoals
import trap_BotResetGoalState
import trap_BotSetChatName
import trap_BotSetChatGender
import trap_BotLoadChatFile
import trap_BotReplaceSynonyms
import trap_UnifyWhiteSpaces
import trap_BotMatchVariable
import trap_BotFindMatch
import trap_StringContains
import trap_BotGetChatMessage
import trap_BotEnterChat
import trap_BotChatLength
import trap_BotReplyChat
import trap_BotNumInitialChats
import trap_BotInitialChat
import trap_BotNumConsoleMessages
import trap_BotNextConsoleMessage
import trap_BotRemoveConsoleMessage
import trap_BotQueueConsoleMessage
import trap_BotFreeChatState
import trap_BotAllocChatState
import trap_Characteristic_String
import trap_Characteristic_BInteger
import trap_Characteristic_Integer
import trap_Characteristic_BFloat
import trap_Characteristic_Float
import trap_BotFreeCharacter
import trap_BotLoadCharacter
import trap_EA_ResetInput
import trap_EA_GetInput
import trap_EA_EndRegular
import trap_EA_View
import trap_EA_Move
import trap_EA_DelayedJump
import trap_EA_Jump
import trap_EA_SelectWeapon
import trap_EA_MoveRight
import trap_EA_MoveLeft
import trap_EA_MoveBack
import trap_EA_MoveForward
import trap_EA_MoveDown
import trap_EA_MoveUp
import trap_EA_Crouch
import trap_EA_Respawn
import trap_EA_Use
import trap_EA_Attack
import trap_EA_Talk
import trap_EA_Gesture
import trap_EA_Action
import trap_EA_Command
import trap_EA_SayTeam
import trap_EA_Say
import trap_AAS_PredictClientMovement
import trap_AAS_Swimming
import trap_AAS_AlternativeRouteGoals
import trap_AAS_PredictRoute
import trap_AAS_EnableRoutingArea
import trap_AAS_AreaTravelTimeToGoalArea
import trap_AAS_AreaReachability
import trap_AAS_IntForBSPEpairKey
import trap_AAS_FloatForBSPEpairKey
import trap_AAS_VectorForBSPEpairKey
import trap_AAS_ValueForBSPEpairKey
import trap_AAS_NextBSPEntity
import trap_AAS_PointContents
import trap_AAS_TraceAreas
import trap_AAS_PointReachabilityAreaIndex
import trap_AAS_PointAreaNum
import trap_AAS_Time
import trap_AAS_PresenceTypeBoundingBox
import trap_AAS_Initialized
import trap_AAS_EntityInfo
import trap_AAS_AreaInfo
import trap_AAS_BBoxAreas
import trap_BotUserCommand
import trap_BotGetServerCommand
import trap_BotGetSnapshotEntity
import trap_BotLibTest
import trap_BotLibUpdateEntity
import trap_BotLibLoadMap
import trap_BotLibStartFrame
import trap_BotLibDefine
import trap_BotLibVarGet
import trap_BotLibVarSet
import trap_BotLibShutdown
import trap_BotLibSetup
import trap_DebugPolygonDelete
import trap_DebugPolygonCreate
import trap_GetEntityToken
import trap_GetUsercmd
import trap_BotFreeClient
import trap_BotAllocateClient
import trap_EntityContact
import trap_EntitiesInBox
import trap_UnlinkEntity
import trap_LinkEntity
import trap_AreasConnected
import trap_AdjustAreaPortalState
import trap_InPVSIgnorePortals
import trap_InPVS
import trap_PointContents
import trap_TraceCapsule
import trap_Trace
import trap_SetBrushModel
import trap_GetServerinfo
import trap_SetUserinfo
import trap_GetUserinfo
import trap_GetConfigstring
import trap_SetConfigstring
import trap_SendServerCommand
import trap_DropClient
import trap_LocateGameData
import trap_Cvar_VariableStringBuffer
import trap_Cvar_VariableValue
import trap_Cvar_VariableIntegerValue
import trap_Cvar_Set
import trap_Cvar_Update
import trap_Cvar_Register
import trap_SendConsoleCommand
import trap_FS_Seek
import trap_FS_GetFileList
import trap_FS_FCloseFile
import trap_FS_Write
import trap_FS_Read
import trap_FS_FOpenFile
import trap_Args
import trap_Argv
import trap_Argc
import trap_RealTime
import trap_Milliseconds
import trap_Error
import trap_Print
export g_rotation
align 4
LABELV g_rotation
skip 272
export pmove_msec
align 4
LABELV pmove_msec
skip 272
export pmove_fixed
align 4
LABELV pmove_fixed
skip 272
export g_smoothClients
align 4
LABELV g_smoothClients
skip 272
export g_predictPVS
align 4
LABELV g_predictPVS
skip 272
export g_unlagged
align 4
LABELV g_unlagged
skip 272
export g_listEntity
align 4
LABELV g_listEntity
skip 272
export g_allowVote
align 4
LABELV g_allowVote
skip 272
export g_podiumDrop
align 4
LABELV g_podiumDrop
skip 272
export g_podiumDist
align 4
LABELV g_podiumDist
skip 272
export g_blood
align 4
LABELV g_blood
skip 272
export g_motd
align 4
LABELV g_motd
skip 272
export g_debugAlloc
align 4
LABELV g_debugAlloc
skip 272
export g_debugDamage
align 4
LABELV g_debugDamage
skip 272
export g_debugMove
align 4
LABELV g_debugMove
skip 272
export g_inactivity
align 4
LABELV g_inactivity
skip 272
export g_forcerespawn
align 4
LABELV g_forcerespawn
skip 272
export g_weaponTeamRespawn
align 4
LABELV g_weaponTeamRespawn
skip 272
export g_weaponRespawn
align 4
LABELV g_weaponRespawn
skip 272
export g_quadfactor
align 4
LABELV g_quadfactor
skip 272
export g_knockback
align 4
LABELV g_knockback
skip 272
export g_gravity
align 4
LABELV g_gravity
skip 272
export g_speed
align 4
LABELV g_speed
skip 272
export g_dedicated
align 4
LABELV g_dedicated
skip 272
export g_needpass
align 4
LABELV g_needpass
skip 272
export g_filterBan
align 4
LABELV g_filterBan
skip 272
export g_banIPs
align 4
LABELV g_banIPs
skip 272
export g_password
align 4
LABELV g_password
skip 272
export g_logSync
align 4
LABELV g_logSync
skip 272
export g_log
align 4
LABELV g_log
skip 272
export g_warmup
align 4
LABELV g_warmup
skip 272
export g_teamForceBalance
align 4
LABELV g_teamForceBalance
skip 272
export g_autoJoin
align 4
LABELV g_autoJoin
skip 272
export g_friendlyFire
align 4
LABELV g_friendlyFire
skip 272
export g_synchronousClients
align 4
LABELV g_synchronousClients
skip 272
export g_capturelimit
align 4
LABELV g_capturelimit
skip 272
export g_timelimit
align 4
LABELV g_timelimit
skip 272
export g_fraglimit
align 4
LABELV g_fraglimit
skip 272
export g_dmflags
align 4
LABELV g_dmflags
skip 272
export g_maxGameClients
align 4
LABELV g_maxGameClients
skip 272
export g_maxclients
align 4
LABELV g_maxclients
skip 272
export g_gametype
align 4
LABELV g_gametype
skip 272
export sv_fps
align 4
LABELV sv_fps
skip 272
export g_mapname
align 4
LABELV g_mapname
skip 272
export g_cheats
align 4
LABELV g_cheats
skip 272
export g_entities
align 4
LABELV g_entities
skip 835584
export level
align 4
LABELV level
skip 11804
import AddTeamScore
import Pickup_Team
import CheckTeamStatus
import TeamplayInfoMessage
import Team_GetLocationMsg
import Team_GetLocation
import SelectCTFSpawnPoint
import Team_FreeEntity
import Team_ReturnFlag
import Team_InitGame
import Team_CheckHurtCarrier
import Team_FragBonuses
import Team_DroppedFlagThink
import TeamColorString
import OtherTeamName
import TeamName
import OtherTeam
import G_MapExist
import G_LoadMap
import ParseMapRotation
import BotTestAAS
import BotAIStartFrame
import BotAIShutdownClient
import BotAISetupClient
import BotAILoadMap
import BotAIShutdown
import BotAISetup
import BotInterbreedEndMatch
import Svcmd_BotList_f
import Svcmd_AddBot_f
import G_BotConnect
import G_RemoveQueuedBotBegin
import G_CheckBotSpawn
import G_GetBotInfoByName
import G_GetBotInfoByNumber
import G_InitBots
import G_PredictPlayerMove
import G_UnTimeShiftClient
import G_UndoTimeShiftFor
import G_DoTimeShiftFor
import G_UnTimeShiftAllClients
import G_TimeShiftAllClients
import G_StoreHistory
import G_ResetHistory
import Svcmd_AbortPodium_f
import SpawnModelsOnVictoryPads
import UpdateTournamentInfo
import G_ClearClientSessionData
import G_WriteClientSessionData
import G_ReadClientSessionData
import G_InitSessionData
import G_WriteSessionData
import G_InitWorldSession
import Svcmd_GameMem_f
import G_InitMemory
import G_Alloc
import Team_ResetFlags
import CheckObeliskAttack
import Team_CheckDroppedItem
import OnSameTeam
import G_RunClient
import ClientEndFrame
import ClientThink
import ClientCommand
import ClientBegin
import ClientDisconnect
import ClientUserinfoChanged
import ClientConnect
import TeamScore
import DeathmatchScoreboardMessage
import FireWeapon
import G_FilterPacket
import G_ProcessIPBans
import ConsoleCommand
import SpotWouldTelefrag
import AddScore
import player_die
import ClientSpawn
import InitBodyQue
import respawn
import CopyToBodyQue
import SelectSpawnPoint
import SetClientViewAngle
import PickTeam
import TeamLeader
import TeamConnectedCount
import TeamCount
import Weapon_HookThink
import Weapon_HookFree
import CheckGauntletAttack
import SnapVectorTowards
import CalcMuzzlePoint
import LogAccuracyHit
import TeleportPlayer
import trigger_teleporter_touch
import Touch_DoorTrigger
import G_RunMover
import fire_grapple
import fire_bfg
import fire_rocket
import fire_grenade
import fire_plasma
import fire_blaster
import G_RunMissile
import TossClientCubes
import TossClientItems
import body_die
import G_InvulnerabilityEffect
import G_RadiusDamage
import G_Damage
import CanDamage
import BuildShaderStateConfig
import AddRemap
import G_SetOrigin
import G_AddEvent
import G_AddPredictableEvent
import vectoyaw
import vtos
import tv
import G_TouchSolids
import G_TouchTriggers
import G_EntitiesFree
import G_FreeEntity
import G_Sound
import G_TempEntity
import G_Spawn
import G_InitGentity
import G_SetMovedir
import G_UseTargets
import G_PickTarget
import G_Find
import G_KillBox
import G_TeamCommand
import G_SoundIndex
import G_ModelIndex
import SaveRegisteredItems
import RegisterItem
import ClearRegisteredItems
import Touch_Item
import ArmorIndex
import Think_Weapon
import FinishSpawningItem
import G_SpawnItem
import SetRespawn
import LaunchItem
import Drop_Item
import PrecacheItem
import UseHoldableItem
import SpawnTime
import RespawnItem
import G_RunItem
import G_CheckTeamItems
import TeamFromString
import G_RevertVote
import Cmd_FollowCycle_f
import SetTeam
import BroadcastTeamChange
import StopFollowing
import Cmd_Score_f
import G_NewString
import G_SpawnEntitiesFromString
import G_SpawnVector
import G_SpawnInt
import G_SpawnFloat
import G_SpawnString
import BigEndian
import replace1
import Q_stradd
import Q_strcpy
import BG_StripColor
import BG_CleanName
import DecodedString
import EncodedString
import strtok
import Q_stristr
import BG_sprintf
import BG_PlayerTouchesItem
import BG_PlayerStateToEntityStateExtraPolate
import BG_PlayerStateToEntityState
import BG_TouchJumpPad
import BG_AddPredictableEventToPlayerstate
import BG_EvaluateTrajectoryDelta
import BG_EvaluateTrajectory
import BG_CanItemBeGrabbed
import BG_FindItemForHoldable
import BG_FindItemForPowerup
import BG_FindItemForWeapon
import BG_FindItem
import bg_numItems
import bg_itemlist
import Pmove
import PM_UpdateViewAngles
import Info_NextPair
import Info_ValidateKeyValue
import Info_Validate
import Info_SetValueForKey_Big
import Info_SetValueForKey
import Info_ValueForKey
import va
import Q_CleanStr
import Q_PrintStrlen
import Q_strcat
import Q_strncpyz
import Q_strrchr
import Q_strupr
import Q_strlwr
import Q_stricmpn
import Q_strncmp
import Q_stricmp
import Q_isalpha
import Q_isupper
import Q_islower
import Q_isprint
import locase
import Com_sprintf
import Parse3DMatrix
import Parse2DMatrix
import Parse1DMatrix
import SkipRestOfLine
import SkipBracedSection
import COM_MatchToken
import Com_Split
import COM_ParseSep
import Com_InitSeparators
import SkipTillSeparators
import COM_ParseWarning
import COM_ParseError
import COM_Compress
import COM_ParseExt
import COM_Parse
import COM_GetCurrentParseLine
import COM_BeginParseSession
import COM_DefaultExtension
import COM_StripExtension
import COM_SkipPath
import Com_Clamp
import PerpendicularVector
import AngleVectors
import MatrixMultiply
import MakeNormalVectors
import RotateAroundDirection
import RotatePointAroundVector
import ProjectPointOnPlane
import PlaneFromPoints
import AngleDelta
import AngleNormalize180
import AngleNormalize360
import AnglesSubtract
import AngleSubtract
import LerpAngle
import AngleMod
import BoxOnPlaneSide
import SetPlaneSignbits
import AxisCopy
import AxisClear
import AnglesToAxis
import vectoangles
import Q_crandom
import Q_random
import Q_rand
import Q_acos
import Q_log2
import VectorRotate
import Vector4Scale
import VectorNormalize2
import VectorNormalize
import CrossProduct
import VectorInverse
import VectorNormalizeFast
import DistanceSquared
import Distance
import VectorLengthSquared
import VectorLength
import VectorCompare
import AddPointToBounds
import ClearBounds
import RadiusFromBounds
import NormalizeColor
import ColorBytes4
import ColorBytes3
import _VectorMA
import _VectorScale
import _VectorCopy
import _VectorAdd
import _VectorSubtract
import _DotProduct
import ByteToDir
import DirToByte
import ClampShort
import ClampChar
import Q_rsqrt
import Q_fabs
import axisDefault
import vec3_origin
import g_color_table
import colorDkGrey
import colorMdGrey
import colorLtGrey
import colorWhite
import colorCyan
import colorMagenta
import colorYellow
import colorBlue
import colorGreen
import colorRed
import colorBlack
import bytedirs
import Hunk_Alloc
import acos
import fabs
import abs
import tan
import atan2
import cos
import sin
import sqrt
import floor
import ceil
import memcpy
import memset
import memmove
import Q_sscanf
import ED_vsprintf
import atoi
import atof
import toupper
import tolower
import strncpy
import strstr
import strchr
import strcmp
import strcpy
import strcat
import strlen
import rand
import srand
import qsort
lit
align 1
LABELV $1240
byte 1 67
byte 1 104
byte 1 101
byte 1 99
byte 1 107
byte 1 105
byte 1 110
byte 1 103
byte 1 32
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 32
byte 1 98
byte 1 97
byte 1 108
byte 1 97
byte 1 110
byte 1 99
byte 1 101
byte 1 10
byte 1 0
align 1
LABELV $1239
byte 1 114
byte 1 101
byte 1 100
byte 1 0
align 1
LABELV $1238
byte 1 83
byte 1 119
byte 1 105
byte 1 116
byte 1 99
byte 1 104
byte 1 105
byte 1 110
byte 1 103
byte 1 32
byte 1 80
byte 1 108
byte 1 97
byte 1 121
byte 1 101
byte 1 114
byte 1 32
byte 1 37
byte 1 100
byte 1 32
byte 1 102
byte 1 114
byte 1 111
byte 1 109
byte 1 32
byte 1 66
byte 1 108
byte 1 117
byte 1 101
byte 1 32
byte 1 116
byte 1 111
byte 1 32
byte 1 82
byte 1 101
byte 1 100
byte 1 10
byte 1 0
align 1
LABELV $1226
byte 1 98
byte 1 108
byte 1 117
byte 1 101
byte 1 0
align 1
LABELV $1225
byte 1 83
byte 1 119
byte 1 105
byte 1 116
byte 1 99
byte 1 104
byte 1 105
byte 1 110
byte 1 103
byte 1 32
byte 1 80
byte 1 108
byte 1 97
byte 1 121
byte 1 101
byte 1 114
byte 1 32
byte 1 37
byte 1 100
byte 1 32
byte 1 102
byte 1 114
byte 1 111
byte 1 109
byte 1 32
byte 1 82
byte 1 101
byte 1 100
byte 1 32
byte 1 116
byte 1 111
byte 1 32
byte 1 66
byte 1 108
byte 1 117
byte 1 101
byte 1 10
byte 1 0
align 1
LABELV $1213
byte 1 84
byte 1 101
byte 1 97
byte 1 109
byte 1 32
byte 1 66
byte 1 97
byte 1 108
byte 1 97
byte 1 110
byte 1 99
byte 1 101
byte 1 32
byte 1 67
byte 1 104
byte 1 101
byte 1 99
byte 1 107
byte 1 58
byte 1 32
byte 1 82
byte 1 101
byte 1 100
byte 1 32
byte 1 84
byte 1 101
byte 1 97
byte 1 109
byte 1 32
byte 1 72
byte 1 117
byte 1 109
byte 1 97
byte 1 110
byte 1 115
byte 1 32
byte 1 61
byte 1 32
byte 1 37
byte 1 100
byte 1 44
byte 1 32
byte 1 66
byte 1 108
byte 1 117
byte 1 101
byte 1 32
byte 1 84
byte 1 101
byte 1 97
byte 1 109
byte 1 32
byte 1 72
byte 1 117
byte 1 109
byte 1 97
byte 1 110
byte 1 115
byte 1 32
byte 1 61
byte 1 32
byte 1 37
byte 1 100
byte 1 10
byte 1 0
align 1
LABELV $1196
byte 1 84
byte 1 101
byte 1 97
byte 1 109
byte 1 32
byte 1 98
byte 1 97
byte 1 108
byte 1 97
byte 1 110
byte 1 99
byte 1 101
byte 1 32
byte 1 105
byte 1 110
byte 1 105
byte 1 116
byte 1 105
byte 1 97
byte 1 108
byte 1 105
byte 1 122
byte 1 101
byte 1 100
byte 1 10
byte 1 0
align 1
LABELV $1188
byte 1 37
byte 1 52
byte 1 105
byte 1 58
byte 1 32
byte 1 37
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $1118
byte 1 78
byte 1 85
byte 1 76
byte 1 76
byte 1 32
byte 1 101
byte 1 110
byte 1 116
byte 1 45
byte 1 62
byte 1 116
byte 1 104
byte 1 105
byte 1 110
byte 1 107
byte 1 0
align 1
LABELV $1109
byte 1 110
byte 1 111
byte 1 110
byte 1 101
byte 1 0
align 1
LABELV $1089
byte 1 108
byte 1 101
byte 1 97
byte 1 100
byte 1 101
byte 1 114
byte 1 0
align 1
LABELV $1086
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 84
byte 1 101
byte 1 97
byte 1 109
byte 1 32
byte 1 118
byte 1 111
byte 1 116
byte 1 101
byte 1 32
byte 1 112
byte 1 97
byte 1 115
byte 1 115
byte 1 101
byte 1 100
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $1081
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 84
byte 1 101
byte 1 97
byte 1 109
byte 1 32
byte 1 118
byte 1 111
byte 1 116
byte 1 101
byte 1 32
byte 1 102
byte 1 97
byte 1 105
byte 1 108
byte 1 101
byte 1 100
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $1038
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 37
byte 1 115
byte 1 32
byte 1 105
byte 1 115
byte 1 32
byte 1 116
byte 1 104
byte 1 101
byte 1 32
byte 1 110
byte 1 101
byte 1 119
byte 1 32
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 32
byte 1 108
byte 1 101
byte 1 97
byte 1 100
byte 1 101
byte 1 114
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $1028
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 37
byte 1 115
byte 1 32
byte 1 94
byte 1 55
byte 1 105
byte 1 115
byte 1 32
byte 1 110
byte 1 111
byte 1 116
byte 1 32
byte 1 111
byte 1 110
byte 1 32
byte 1 116
byte 1 104
byte 1 101
byte 1 32
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 32
byte 1 97
byte 1 110
byte 1 121
byte 1 109
byte 1 111
byte 1 114
byte 1 101
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $1025
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 37
byte 1 115
byte 1 32
byte 1 94
byte 1 55
byte 1 105
byte 1 115
byte 1 32
byte 1 110
byte 1 111
byte 1 116
byte 1 32
byte 1 99
byte 1 111
byte 1 110
byte 1 110
byte 1 101
byte 1 99
byte 1 116
byte 1 101
byte 1 100
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $1004
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 86
byte 1 111
byte 1 116
byte 1 101
byte 1 32
byte 1 112
byte 1 97
byte 1 115
byte 1 115
byte 1 101
byte 1 100
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $999
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 86
byte 1 111
byte 1 116
byte 1 101
byte 1 32
byte 1 102
byte 1 97
byte 1 105
byte 1 108
byte 1 101
byte 1 100
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $990
byte 1 37
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $903
byte 1 87
byte 1 97
byte 1 114
byte 1 109
byte 1 117
byte 1 112
byte 1 58
byte 1 10
byte 1 0
align 1
LABELV $853
byte 1 109
byte 1 97
byte 1 112
byte 1 95
byte 1 114
byte 1 101
byte 1 115
byte 1 116
byte 1 97
byte 1 114
byte 1 116
byte 1 0
align 1
LABELV $826
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 66
byte 1 108
byte 1 117
byte 1 101
byte 1 32
byte 1 104
byte 1 105
byte 1 116
byte 1 32
byte 1 116
byte 1 104
byte 1 101
byte 1 32
byte 1 99
byte 1 97
byte 1 112
byte 1 116
byte 1 117
byte 1 114
byte 1 101
byte 1 108
byte 1 105
byte 1 109
byte 1 105
byte 1 116
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $820
byte 1 67
byte 1 97
byte 1 112
byte 1 116
byte 1 117
byte 1 114
byte 1 101
byte 1 108
byte 1 105
byte 1 109
byte 1 105
byte 1 116
byte 1 32
byte 1 104
byte 1 105
byte 1 116
byte 1 46
byte 1 0
align 1
LABELV $819
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 82
byte 1 101
byte 1 100
byte 1 32
byte 1 104
byte 1 105
byte 1 116
byte 1 32
byte 1 116
byte 1 104
byte 1 101
byte 1 32
byte 1 99
byte 1 97
byte 1 112
byte 1 116
byte 1 117
byte 1 114
byte 1 101
byte 1 108
byte 1 105
byte 1 109
byte 1 105
byte 1 116
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $809
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 37
byte 1 115
byte 1 94
byte 1 55
byte 1 32
byte 1 104
byte 1 105
byte 1 116
byte 1 32
byte 1 116
byte 1 104
byte 1 101
byte 1 32
byte 1 102
byte 1 114
byte 1 97
byte 1 103
byte 1 108
byte 1 105
byte 1 109
byte 1 105
byte 1 116
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $796
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 66
byte 1 108
byte 1 117
byte 1 101
byte 1 32
byte 1 104
byte 1 105
byte 1 116
byte 1 32
byte 1 116
byte 1 104
byte 1 101
byte 1 32
byte 1 102
byte 1 114
byte 1 97
byte 1 103
byte 1 108
byte 1 105
byte 1 109
byte 1 105
byte 1 116
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $790
byte 1 70
byte 1 114
byte 1 97
byte 1 103
byte 1 108
byte 1 105
byte 1 109
byte 1 105
byte 1 116
byte 1 32
byte 1 104
byte 1 105
byte 1 116
byte 1 46
byte 1 0
align 1
LABELV $789
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 82
byte 1 101
byte 1 100
byte 1 32
byte 1 104
byte 1 105
byte 1 116
byte 1 32
byte 1 116
byte 1 104
byte 1 101
byte 1 32
byte 1 102
byte 1 114
byte 1 97
byte 1 103
byte 1 108
byte 1 105
byte 1 109
byte 1 105
byte 1 116
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $776
byte 1 84
byte 1 105
byte 1 109
byte 1 101
byte 1 108
byte 1 105
byte 1 109
byte 1 105
byte 1 116
byte 1 32
byte 1 104
byte 1 105
byte 1 116
byte 1 46
byte 1 0
align 1
LABELV $775
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 84
byte 1 105
byte 1 109
byte 1 101
byte 1 108
byte 1 105
byte 1 109
byte 1 105
byte 1 116
byte 1 32
byte 1 104
byte 1 105
byte 1 116
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $680
byte 1 115
byte 1 99
byte 1 111
byte 1 114
byte 1 101
byte 1 58
byte 1 32
byte 1 37
byte 1 105
byte 1 32
byte 1 32
byte 1 112
byte 1 105
byte 1 110
byte 1 103
byte 1 58
byte 1 32
byte 1 37
byte 1 105
byte 1 32
byte 1 32
byte 1 99
byte 1 108
byte 1 105
byte 1 101
byte 1 110
byte 1 116
byte 1 58
byte 1 32
byte 1 37
byte 1 105
byte 1 32
byte 1 37
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $663
byte 1 114
byte 1 101
byte 1 100
byte 1 58
byte 1 37
byte 1 105
byte 1 32
byte 1 32
byte 1 98
byte 1 108
byte 1 117
byte 1 101
byte 1 58
byte 1 37
byte 1 105
byte 1 10
byte 1 0
align 1
LABELV $654
byte 1 69
byte 1 120
byte 1 105
byte 1 116
byte 1 58
byte 1 32
byte 1 37
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $648
byte 1 37
byte 1 115
byte 1 0
align 1
LABELV $643
byte 1 37
byte 1 51
byte 1 105
byte 1 58
byte 1 37
byte 1 48
byte 1 50
byte 1 105
byte 1 46
byte 1 37
byte 1 105
byte 1 32
byte 1 0
align 1
LABELV $640
byte 1 118
byte 1 115
byte 1 116
byte 1 114
byte 1 32
byte 1 110
byte 1 101
byte 1 120
byte 1 116
byte 1 109
byte 1 97
byte 1 112
byte 1 10
byte 1 0
align 1
LABELV $638
byte 1 109
byte 1 97
byte 1 112
byte 1 95
byte 1 114
byte 1 101
byte 1 115
byte 1 116
byte 1 97
byte 1 114
byte 1 116
byte 1 32
byte 1 0
align 1
LABELV $635
byte 1 110
byte 1 101
byte 1 120
byte 1 116
byte 1 109
byte 1 97
byte 1 112
byte 1 0
align 1
LABELV $611
byte 1 109
byte 1 97
byte 1 112
byte 1 95
byte 1 114
byte 1 101
byte 1 115
byte 1 116
byte 1 97
byte 1 114
byte 1 116
byte 1 32
byte 1 48
byte 1 10
byte 1 0
align 1
LABELV $526
byte 1 37
byte 1 105
byte 1 0
align 1
LABELV $387
byte 1 115
byte 1 0
align 1
LABELV $378
byte 1 102
byte 1 0
align 1
LABELV $344
byte 1 83
byte 1 104
byte 1 117
byte 1 116
byte 1 100
byte 1 111
byte 1 119
byte 1 110
byte 1 71
byte 1 97
byte 1 109
byte 1 101
byte 1 58
byte 1 10
byte 1 0
align 1
LABELV $340
byte 1 61
byte 1 61
byte 1 61
byte 1 61
byte 1 32
byte 1 83
byte 1 104
byte 1 117
byte 1 116
byte 1 100
byte 1 111
byte 1 119
byte 1 110
byte 1 71
byte 1 97
byte 1 109
byte 1 101
byte 1 32
byte 1 61
byte 1 61
byte 1 61
byte 1 61
byte 1 10
byte 1 0
align 1
LABELV $337
byte 1 115
byte 1 101
byte 1 115
byte 1 115
byte 1 105
byte 1 111
byte 1 110
byte 1 77
byte 1 97
byte 1 112
byte 1 73
byte 1 110
byte 1 100
byte 1 101
byte 1 120
byte 1 0
align 1
LABELV $331
byte 1 98
byte 1 111
byte 1 116
byte 1 95
byte 1 101
byte 1 110
byte 1 97
byte 1 98
byte 1 108
byte 1 101
byte 1 0
align 1
LABELV $328
byte 1 109
byte 1 111
byte 1 100
byte 1 101
byte 1 108
byte 1 115
byte 1 47
byte 1 109
byte 1 97
byte 1 112
byte 1 111
byte 1 98
byte 1 106
byte 1 101
byte 1 99
byte 1 116
byte 1 115
byte 1 47
byte 1 112
byte 1 111
byte 1 100
byte 1 105
byte 1 117
byte 1 109
byte 1 47
byte 1 112
byte 1 111
byte 1 100
byte 1 105
byte 1 117
byte 1 109
byte 1 52
byte 1 46
byte 1 109
byte 1 100
byte 1 51
byte 1 0
align 1
LABELV $326
byte 1 99
byte 1 111
byte 1 109
byte 1 95
byte 1 98
byte 1 117
byte 1 105
byte 1 108
byte 1 100
byte 1 83
byte 1 99
byte 1 114
byte 1 105
byte 1 112
byte 1 116
byte 1 0
align 1
LABELV $322
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 10
byte 1 0
align 1
LABELV $316
byte 1 99
byte 1 108
byte 1 105
byte 1 101
byte 1 110
byte 1 116
byte 1 115
byte 1 108
byte 1 111
byte 1 116
byte 1 0
align 1
LABELV $300
byte 1 78
byte 1 111
byte 1 116
byte 1 32
byte 1 108
byte 1 111
byte 1 103
byte 1 103
byte 1 105
byte 1 110
byte 1 103
byte 1 32
byte 1 116
byte 1 111
byte 1 32
byte 1 100
byte 1 105
byte 1 115
byte 1 107
byte 1 46
byte 1 10
byte 1 0
align 1
LABELV $299
byte 1 73
byte 1 110
byte 1 105
byte 1 116
byte 1 71
byte 1 97
byte 1 109
byte 1 101
byte 1 58
byte 1 32
byte 1 37
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $298
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 10
byte 1 0
align 1
LABELV $296
byte 1 87
byte 1 65
byte 1 82
byte 1 78
byte 1 73
byte 1 78
byte 1 71
byte 1 58
byte 1 32
byte 1 67
byte 1 111
byte 1 117
byte 1 108
byte 1 100
byte 1 110
byte 1 39
byte 1 116
byte 1 32
byte 1 111
byte 1 112
byte 1 101
byte 1 110
byte 1 32
byte 1 108
byte 1 111
byte 1 103
byte 1 102
byte 1 105
byte 1 108
byte 1 101
byte 1 58
byte 1 32
byte 1 37
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $281
byte 1 115
byte 1 111
byte 1 117
byte 1 110
byte 1 100
byte 1 47
byte 1 112
byte 1 108
byte 1 97
byte 1 121
byte 1 101
byte 1 114
byte 1 47
byte 1 102
byte 1 114
byte 1 121
byte 1 46
byte 1 119
byte 1 97
byte 1 118
byte 1 0
align 1
LABELV $275
byte 1 83
byte 1 86
byte 1 70
byte 1 95
byte 1 83
byte 1 69
byte 1 76
byte 1 70
byte 1 95
byte 1 80
byte 1 79
byte 1 82
byte 1 84
byte 1 65
byte 1 76
byte 1 50
byte 1 95
byte 1 81
byte 1 51
byte 1 69
byte 1 0
align 1
LABELV $270
byte 1 47
byte 1 47
byte 1 116
byte 1 114
byte 1 97
byte 1 112
byte 1 95
byte 1 71
byte 1 101
byte 1 116
byte 1 86
byte 1 97
byte 1 108
byte 1 117
byte 1 101
byte 1 0
align 1
LABELV $269
byte 1 103
byte 1 97
byte 1 109
byte 1 101
byte 1 100
byte 1 97
byte 1 116
byte 1 101
byte 1 58
byte 1 32
byte 1 37
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $268
byte 1 103
byte 1 97
byte 1 109
byte 1 101
byte 1 110
byte 1 97
byte 1 109
byte 1 101
byte 1 58
byte 1 32
byte 1 37
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $267
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 32
byte 1 71
byte 1 97
byte 1 109
byte 1 101
byte 1 32
byte 1 73
byte 1 110
byte 1 105
byte 1 116
byte 1 105
byte 1 97
byte 1 108
byte 1 105
byte 1 122
byte 1 97
byte 1 116
byte 1 105
byte 1 111
byte 1 110
byte 1 32
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 10
byte 1 0
align 1
LABELV $262
byte 1 98
byte 1 108
byte 1 117
byte 1 101
byte 1 112
byte 1 108
byte 1 97
byte 1 121
byte 1 101
byte 1 114
byte 1 0
align 1
LABELV $257
byte 1 114
byte 1 101
byte 1 100
byte 1 112
byte 1 108
byte 1 97
byte 1 121
byte 1 101
byte 1 114
byte 1 0
align 1
LABELV $252
byte 1 98
byte 1 108
byte 1 117
byte 1 101
byte 1 115
byte 1 112
byte 1 97
byte 1 119
byte 1 110
byte 1 0
align 1
LABELV $247
byte 1 114
byte 1 101
byte 1 100
byte 1 115
byte 1 112
byte 1 97
byte 1 119
byte 1 110
byte 1 0
align 1
LABELV $244
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 95
byte 1 67
byte 1 84
byte 1 70
byte 1 95
byte 1 0
align 1
LABELV $239
byte 1 100
byte 1 101
byte 1 97
byte 1 116
byte 1 104
byte 1 109
byte 1 97
byte 1 116
byte 1 99
byte 1 104
byte 1 0
align 1
LABELV $230
byte 1 105
byte 1 110
byte 1 116
byte 1 101
byte 1 114
byte 1 109
byte 1 105
byte 1 115
byte 1 115
byte 1 105
byte 1 111
byte 1 110
byte 1 0
align 1
LABELV $227
byte 1 105
byte 1 110
byte 1 102
byte 1 111
byte 1 95
byte 1 112
byte 1 108
byte 1 97
byte 1 121
byte 1 101
byte 1 114
byte 1 95
byte 1 0
align 1
LABELV $209
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 83
byte 1 101
byte 1 114
byte 1 118
byte 1 101
byte 1 114
byte 1 58
byte 1 32
byte 1 37
byte 1 115
byte 1 32
byte 1 99
byte 1 104
byte 1 97
byte 1 110
byte 1 103
byte 1 101
byte 1 100
byte 1 32
byte 1 116
byte 1 111
byte 1 32
byte 1 37
byte 1 115
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $197
byte 1 103
byte 1 95
byte 1 100
byte 1 111
byte 1 87
byte 1 97
byte 1 114
byte 1 109
byte 1 117
byte 1 112
byte 1 0
align 1
LABELV $193
byte 1 103
byte 1 95
byte 1 103
byte 1 97
byte 1 109
byte 1 101
byte 1 116
byte 1 121
byte 1 112
byte 1 101
byte 1 32
byte 1 37
byte 1 105
byte 1 32
byte 1 105
byte 1 115
byte 1 32
byte 1 111
byte 1 117
byte 1 116
byte 1 32
byte 1 111
byte 1 102
byte 1 32
byte 1 114
byte 1 97
byte 1 110
byte 1 103
byte 1 101
byte 1 44
byte 1 32
byte 1 100
byte 1 101
byte 1 102
byte 1 97
byte 1 117
byte 1 108
byte 1 116
byte 1 105
byte 1 110
byte 1 103
byte 1 32
byte 1 116
byte 1 111
byte 1 32
byte 1 48
byte 1 10
byte 1 0
align 1
LABELV $175
byte 1 37
byte 1 105
byte 1 32
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 115
byte 1 32
byte 1 119
byte 1 105
byte 1 116
byte 1 104
byte 1 32
byte 1 37
byte 1 105
byte 1 32
byte 1 101
byte 1 110
byte 1 116
byte 1 105
byte 1 116
byte 1 105
byte 1 101
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $117
byte 1 103
byte 1 95
byte 1 114
byte 1 111
byte 1 116
byte 1 97
byte 1 116
byte 1 105
byte 1 111
byte 1 110
byte 1 0
align 1
LABELV $116
byte 1 112
byte 1 109
byte 1 111
byte 1 118
byte 1 101
byte 1 95
byte 1 109
byte 1 115
byte 1 101
byte 1 99
byte 1 0
align 1
LABELV $115
byte 1 112
byte 1 109
byte 1 111
byte 1 118
byte 1 101
byte 1 95
byte 1 102
byte 1 105
byte 1 120
byte 1 101
byte 1 100
byte 1 0
align 1
LABELV $114
byte 1 103
byte 1 95
byte 1 115
byte 1 109
byte 1 111
byte 1 111
byte 1 116
byte 1 104
byte 1 67
byte 1 108
byte 1 105
byte 1 101
byte 1 110
byte 1 116
byte 1 115
byte 1 0
align 1
LABELV $113
byte 1 103
byte 1 95
byte 1 112
byte 1 114
byte 1 101
byte 1 100
byte 1 105
byte 1 99
byte 1 116
byte 1 80
byte 1 86
byte 1 83
byte 1 0
align 1
LABELV $112
byte 1 103
byte 1 95
byte 1 117
byte 1 110
byte 1 108
byte 1 97
byte 1 103
byte 1 103
byte 1 101
byte 1 100
byte 1 0
align 1
LABELV $111
byte 1 103
byte 1 95
byte 1 108
byte 1 105
byte 1 115
byte 1 116
byte 1 69
byte 1 110
byte 1 116
byte 1 105
byte 1 116
byte 1 121
byte 1 0
align 1
LABELV $110
byte 1 103
byte 1 95
byte 1 97
byte 1 108
byte 1 108
byte 1 111
byte 1 119
byte 1 86
byte 1 111
byte 1 116
byte 1 101
byte 1 0
align 1
LABELV $109
byte 1 55
byte 1 48
byte 1 0
align 1
LABELV $108
byte 1 103
byte 1 95
byte 1 112
byte 1 111
byte 1 100
byte 1 105
byte 1 117
byte 1 109
byte 1 68
byte 1 114
byte 1 111
byte 1 112
byte 1 0
align 1
LABELV $107
byte 1 56
byte 1 48
byte 1 0
align 1
LABELV $106
byte 1 103
byte 1 95
byte 1 112
byte 1 111
byte 1 100
byte 1 105
byte 1 117
byte 1 109
byte 1 68
byte 1 105
byte 1 115
byte 1 116
byte 1 0
align 1
LABELV $105
byte 1 99
byte 1 111
byte 1 109
byte 1 95
byte 1 98
byte 1 108
byte 1 111
byte 1 111
byte 1 100
byte 1 0
align 1
LABELV $104
byte 1 103
byte 1 95
byte 1 109
byte 1 111
byte 1 116
byte 1 100
byte 1 0
align 1
LABELV $103
byte 1 103
byte 1 95
byte 1 100
byte 1 101
byte 1 98
byte 1 117
byte 1 103
byte 1 65
byte 1 108
byte 1 108
byte 1 111
byte 1 99
byte 1 0
align 1
LABELV $102
byte 1 103
byte 1 95
byte 1 100
byte 1 101
byte 1 98
byte 1 117
byte 1 103
byte 1 68
byte 1 97
byte 1 109
byte 1 97
byte 1 103
byte 1 101
byte 1 0
align 1
LABELV $101
byte 1 103
byte 1 95
byte 1 100
byte 1 101
byte 1 98
byte 1 117
byte 1 103
byte 1 77
byte 1 111
byte 1 118
byte 1 101
byte 1 0
align 1
LABELV $100
byte 1 103
byte 1 95
byte 1 105
byte 1 110
byte 1 97
byte 1 99
byte 1 116
byte 1 105
byte 1 118
byte 1 105
byte 1 116
byte 1 121
byte 1 0
align 1
LABELV $99
byte 1 103
byte 1 95
byte 1 102
byte 1 111
byte 1 114
byte 1 99
byte 1 101
byte 1 114
byte 1 101
byte 1 115
byte 1 112
byte 1 97
byte 1 119
byte 1 110
byte 1 0
align 1
LABELV $98
byte 1 103
byte 1 95
byte 1 119
byte 1 101
byte 1 97
byte 1 112
byte 1 111
byte 1 110
byte 1 84
byte 1 101
byte 1 97
byte 1 109
byte 1 82
byte 1 101
byte 1 115
byte 1 112
byte 1 97
byte 1 119
byte 1 110
byte 1 0
align 1
LABELV $97
byte 1 53
byte 1 0
align 1
LABELV $96
byte 1 103
byte 1 95
byte 1 119
byte 1 101
byte 1 97
byte 1 112
byte 1 111
byte 1 110
byte 1 114
byte 1 101
byte 1 115
byte 1 112
byte 1 97
byte 1 119
byte 1 110
byte 1 0
align 1
LABELV $95
byte 1 51
byte 1 0
align 1
LABELV $94
byte 1 103
byte 1 95
byte 1 113
byte 1 117
byte 1 97
byte 1 100
byte 1 102
byte 1 97
byte 1 99
byte 1 116
byte 1 111
byte 1 114
byte 1 0
align 1
LABELV $93
byte 1 49
byte 1 48
byte 1 48
byte 1 48
byte 1 0
align 1
LABELV $92
byte 1 103
byte 1 95
byte 1 107
byte 1 110
byte 1 111
byte 1 99
byte 1 107
byte 1 98
byte 1 97
byte 1 99
byte 1 107
byte 1 0
align 1
LABELV $91
byte 1 56
byte 1 48
byte 1 48
byte 1 0
align 1
LABELV $90
byte 1 103
byte 1 95
byte 1 103
byte 1 114
byte 1 97
byte 1 118
byte 1 105
byte 1 116
byte 1 121
byte 1 0
align 1
LABELV $89
byte 1 51
byte 1 50
byte 1 48
byte 1 0
align 1
LABELV $88
byte 1 103
byte 1 95
byte 1 115
byte 1 112
byte 1 101
byte 1 101
byte 1 100
byte 1 0
align 1
LABELV $87
byte 1 100
byte 1 101
byte 1 100
byte 1 105
byte 1 99
byte 1 97
byte 1 116
byte 1 101
byte 1 100
byte 1 0
align 1
LABELV $86
byte 1 103
byte 1 95
byte 1 110
byte 1 101
byte 1 101
byte 1 100
byte 1 112
byte 1 97
byte 1 115
byte 1 115
byte 1 0
align 1
LABELV $85
byte 1 103
byte 1 95
byte 1 102
byte 1 105
byte 1 108
byte 1 116
byte 1 101
byte 1 114
byte 1 66
byte 1 97
byte 1 110
byte 1 0
align 1
LABELV $84
byte 1 103
byte 1 95
byte 1 98
byte 1 97
byte 1 110
byte 1 73
byte 1 80
byte 1 115
byte 1 0
align 1
LABELV $83
byte 1 103
byte 1 95
byte 1 112
byte 1 97
byte 1 115
byte 1 115
byte 1 119
byte 1 111
byte 1 114
byte 1 100
byte 1 0
align 1
LABELV $82
byte 1 103
byte 1 95
byte 1 108
byte 1 111
byte 1 103
byte 1 83
byte 1 121
byte 1 110
byte 1 99
byte 1 0
align 1
LABELV $81
byte 1 103
byte 1 97
byte 1 109
byte 1 101
byte 1 115
byte 1 46
byte 1 108
byte 1 111
byte 1 103
byte 1 0
align 1
LABELV $80
byte 1 103
byte 1 95
byte 1 108
byte 1 111
byte 1 103
byte 1 0
align 1
LABELV $79
byte 1 103
byte 1 95
byte 1 119
byte 1 97
byte 1 114
byte 1 109
byte 1 117
byte 1 112
byte 1 0
align 1
LABELV $78
byte 1 103
byte 1 95
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 70
byte 1 111
byte 1 114
byte 1 99
byte 1 101
byte 1 66
byte 1 97
byte 1 108
byte 1 97
byte 1 110
byte 1 99
byte 1 101
byte 1 0
align 1
LABELV $77
byte 1 49
byte 1 0
align 1
LABELV $76
byte 1 103
byte 1 95
byte 1 97
byte 1 117
byte 1 116
byte 1 111
byte 1 74
byte 1 111
byte 1 105
byte 1 110
byte 1 0
align 1
LABELV $75
byte 1 103
byte 1 95
byte 1 102
byte 1 114
byte 1 105
byte 1 101
byte 1 110
byte 1 100
byte 1 108
byte 1 121
byte 1 70
byte 1 105
byte 1 114
byte 1 101
byte 1 0
align 1
LABELV $74
byte 1 103
byte 1 95
byte 1 115
byte 1 121
byte 1 110
byte 1 99
byte 1 104
byte 1 114
byte 1 111
byte 1 110
byte 1 111
byte 1 117
byte 1 115
byte 1 67
byte 1 108
byte 1 105
byte 1 101
byte 1 110
byte 1 116
byte 1 115
byte 1 0
align 1
LABELV $73
byte 1 99
byte 1 97
byte 1 112
byte 1 116
byte 1 117
byte 1 114
byte 1 101
byte 1 108
byte 1 105
byte 1 109
byte 1 105
byte 1 116
byte 1 0
align 1
LABELV $72
byte 1 116
byte 1 105
byte 1 109
byte 1 101
byte 1 108
byte 1 105
byte 1 109
byte 1 105
byte 1 116
byte 1 0
align 1
LABELV $71
byte 1 50
byte 1 48
byte 1 0
align 1
LABELV $70
byte 1 102
byte 1 114
byte 1 97
byte 1 103
byte 1 108
byte 1 105
byte 1 109
byte 1 105
byte 1 116
byte 1 0
align 1
LABELV $69
byte 1 100
byte 1 109
byte 1 102
byte 1 108
byte 1 97
byte 1 103
byte 1 115
byte 1 0
align 1
LABELV $68
byte 1 103
byte 1 95
byte 1 109
byte 1 97
byte 1 120
byte 1 71
byte 1 97
byte 1 109
byte 1 101
byte 1 67
byte 1 108
byte 1 105
byte 1 101
byte 1 110
byte 1 116
byte 1 115
byte 1 0
align 1
LABELV $67
byte 1 56
byte 1 0
align 1
LABELV $66
byte 1 115
byte 1 118
byte 1 95
byte 1 109
byte 1 97
byte 1 120
byte 1 99
byte 1 108
byte 1 105
byte 1 101
byte 1 110
byte 1 116
byte 1 115
byte 1 0
align 1
LABELV $65
byte 1 48
byte 1 0
align 1
LABELV $64
byte 1 103
byte 1 95
byte 1 103
byte 1 97
byte 1 109
byte 1 101
byte 1 116
byte 1 121
byte 1 112
byte 1 101
byte 1 0
align 1
LABELV $63
byte 1 51
byte 1 48
byte 1 0
align 1
LABELV $62
byte 1 115
byte 1 118
byte 1 95
byte 1 102
byte 1 112
byte 1 115
byte 1 0
align 1
LABELV $61
byte 1 109
byte 1 97
byte 1 112
byte 1 110
byte 1 97
byte 1 109
byte 1 101
byte 1 0
align 1
LABELV $60
byte 1 0
align 1
LABELV $59
byte 1 115
byte 1 118
byte 1 95
byte 1 99
byte 1 104
byte 1 101
byte 1 97
byte 1 116
byte 1 115
byte 1 0
align 1
LABELV $58
byte 1 74
byte 1 117
byte 1 110
byte 1 32
byte 1 49
byte 1 50
byte 1 32
byte 1 50
byte 1 48
byte 1 50
byte 1 52
byte 1 0
align 1
LABELV $57
byte 1 103
byte 1 97
byte 1 109
byte 1 101
byte 1 100
byte 1 97
byte 1 116
byte 1 101
byte 1 0
align 1
LABELV $56
byte 1 98
byte 1 97
byte 1 115
byte 1 101
byte 1 113
byte 1 51
byte 1 0
align 1
LABELV $55
byte 1 103
byte 1 97
byte 1 109
byte 1 101
byte 1 110
byte 1 97
byte 1 109
byte 1 101
byte 1 0
