.class public abstract Lqj4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lcom/google/android/gms/common/Feature;

.field public static final b:Lcom/google/android/gms/common/Feature;

.field public static final c:Lcom/google/android/gms/common/Feature;

.field public static final d:Lcom/google/android/gms/common/Feature;

.field public static final e:Lcom/google/android/gms/common/Feature;

.field public static final f:Lcom/google/android/gms/common/Feature;

.field public static final g:Lcom/google/android/gms/common/Feature;

.field public static final h:Lcom/google/android/gms/common/Feature;

.field public static final i:[Lcom/google/android/gms/common/Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 1
    new-instance v1, Lcom/google/android/gms/common/Feature;

    .line 2
    .line 3
    const-string v0, "auth_api_credentials_begin_sign_in"

    .line 4
    .line 5
    const-wide/16 v2, 0x9

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/google/android/gms/common/Feature;

    .line 12
    .line 13
    const-string v0, "auth_api_credentials_sign_out"

    .line 14
    .line 15
    const-wide/16 v5, 0x2

    .line 16
    .line 17
    invoke-direct {v2, v0, v5, v6, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 18
    .line 19
    .line 20
    sput-object v2, Lqj4;->a:Lcom/google/android/gms/common/Feature;

    .line 21
    .line 22
    new-instance v3, Lcom/google/android/gms/common/Feature;

    .line 23
    .line 24
    const-string v0, "auth_api_credentials_authorize"

    .line 25
    .line 26
    const-wide/16 v7, 0x1

    .line 27
    .line 28
    invoke-direct {v3, v0, v7, v8, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 29
    .line 30
    .line 31
    sput-object v3, Lqj4;->b:Lcom/google/android/gms/common/Feature;

    .line 32
    .line 33
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 34
    .line 35
    const-string v9, "auth_api_credentials_revoke_access"

    .line 36
    .line 37
    invoke-direct {v0, v9, v7, v8, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lqj4;->c:Lcom/google/android/gms/common/Feature;

    .line 41
    .line 42
    new-instance v9, Lcom/google/android/gms/common/Feature;

    .line 43
    .line 44
    const-string v10, "auth_api_credentials_clear_token"

    .line 45
    .line 46
    invoke-direct {v9, v10, v7, v8, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 47
    .line 48
    .line 49
    sput-object v9, Lqj4;->d:Lcom/google/android/gms/common/Feature;

    .line 50
    .line 51
    new-instance v10, Lcom/google/android/gms/common/Feature;

    .line 52
    .line 53
    const-string v11, "auth_api_credentials_save_password"

    .line 54
    .line 55
    const-wide/16 v12, 0x4

    .line 56
    .line 57
    invoke-direct {v10, v11, v12, v13, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 58
    .line 59
    .line 60
    sput-object v10, Lqj4;->e:Lcom/google/android/gms/common/Feature;

    .line 61
    .line 62
    new-instance v11, Lcom/google/android/gms/common/Feature;

    .line 63
    .line 64
    const-string v12, "auth_api_credentials_get_sign_in_intent"

    .line 65
    .line 66
    const-wide/16 v13, 0x6

    .line 67
    .line 68
    invoke-direct {v11, v12, v13, v14, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 69
    .line 70
    .line 71
    sput-object v11, Lqj4;->f:Lcom/google/android/gms/common/Feature;

    .line 72
    .line 73
    new-instance v12, Lcom/google/android/gms/common/Feature;

    .line 74
    .line 75
    const-string v13, "auth_api_credentials_save_account_linking_token"

    .line 76
    .line 77
    const-wide/16 v14, 0x3

    .line 78
    .line 79
    invoke-direct {v12, v13, v14, v15, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 80
    .line 81
    .line 82
    sput-object v12, Lqj4;->g:Lcom/google/android/gms/common/Feature;

    .line 83
    .line 84
    move-object v13, v9

    .line 85
    new-instance v9, Lcom/google/android/gms/common/Feature;

    .line 86
    .line 87
    const-string v5, "auth_api_credentials_get_phone_number_hint_intent"

    .line 88
    .line 89
    invoke-direct {v9, v5, v14, v15, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 90
    .line 91
    .line 92
    sput-object v9, Lqj4;->h:Lcom/google/android/gms/common/Feature;

    .line 93
    .line 94
    move-object v6, v10

    .line 95
    new-instance v10, Lcom/google/android/gms/common/Feature;

    .line 96
    .line 97
    const-string v5, "auth_api_credentials_verify_with_google"

    .line 98
    .line 99
    invoke-direct {v10, v5, v7, v8, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 100
    .line 101
    .line 102
    move-object v5, v11

    .line 103
    new-instance v11, Lcom/google/android/gms/common/Feature;

    .line 104
    .line 105
    const-string v14, "auth_api_credentials_credential_provider"

    .line 106
    .line 107
    invoke-direct {v11, v14, v7, v8, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 108
    .line 109
    .line 110
    move-object v14, v12

    .line 111
    new-instance v12, Lcom/google/android/gms/common/Feature;

    .line 112
    .line 113
    const-string v15, "auth_api_credentials_save_webauthn_credential_specifics"

    .line 114
    .line 115
    invoke-direct {v12, v15, v7, v8, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 116
    .line 117
    .line 118
    move-object v15, v5

    .line 119
    move-object v5, v13

    .line 120
    new-instance v13, Lcom/google/android/gms/common/Feature;

    .line 121
    .line 122
    const-string v4, "auth_api_credentials_delete_webauthn_credential_specifics"

    .line 123
    .line 124
    move-object/from16 v19, v0

    .line 125
    .line 126
    const/4 v0, 0x0

    .line 127
    invoke-direct {v13, v4, v7, v8, v0}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 128
    .line 129
    .line 130
    move-object v0, v14

    .line 131
    new-instance v14, Lcom/google/android/gms/common/Feature;

    .line 132
    .line 133
    const-string v4, "auth_api_credentials_list_webauthn_credential_specifics"

    .line 134
    .line 135
    move-object/from16 v20, v0

    .line 136
    .line 137
    const/4 v0, 0x1

    .line 138
    invoke-direct {v14, v4, v7, v8, v0}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 139
    .line 140
    .line 141
    move-object v4, v15

    .line 142
    new-instance v15, Lcom/google/android/gms/common/Feature;

    .line 143
    .line 144
    const-string v7, "auth_api_credentials_get_google_passkey_for_export"

    .line 145
    .line 146
    move-object v8, v1

    .line 147
    move-object/from16 v18, v2

    .line 148
    .line 149
    const-wide/16 v1, 0x2

    .line 150
    .line 151
    invoke-direct {v15, v7, v1, v2, v0}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 152
    .line 153
    .line 154
    new-instance v1, Lcom/google/android/gms/common/Feature;

    .line 155
    .line 156
    const-string v2, "auth_api_credentials_get_authentication_intent"

    .line 157
    .line 158
    move-object v7, v3

    .line 159
    move-object/from16 v16, v4

    .line 160
    .line 161
    const-wide/16 v3, 0x1

    .line 162
    .line 163
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 164
    .line 165
    .line 166
    new-instance v2, Lcom/google/android/gms/common/Feature;

    .line 167
    .line 168
    move-object/from16 v17, v1

    .line 169
    .line 170
    const-string v1, "auth_api_credentials_get_registration_intent"

    .line 171
    .line 172
    invoke-direct {v2, v1, v3, v4, v0}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 173
    .line 174
    .line 175
    new-instance v1, Lcom/google/android/gms/common/Feature;

    .line 176
    .line 177
    move-object/from16 v21, v2

    .line 178
    .line 179
    const-string v2, "auth_api_credentials_check_key_availability"

    .line 180
    .line 181
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 182
    .line 183
    .line 184
    new-instance v2, Lcom/google/android/gms/common/Feature;

    .line 185
    .line 186
    move-object/from16 v22, v1

    .line 187
    .line 188
    const-string v1, "auth_api_credentials_has_discoverable_key"

    .line 189
    .line 190
    invoke-direct {v2, v1, v3, v4, v0}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 191
    .line 192
    .line 193
    new-instance v1, Lcom/google/android/gms/common/Feature;

    .line 194
    .line 195
    move-object/from16 v23, v2

    .line 196
    .line 197
    const-string v2, "auth_api_credentials_validate_calling_browser"

    .line 198
    .line 199
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 200
    .line 201
    .line 202
    new-instance v2, Lcom/google/android/gms/common/Feature;

    .line 203
    .line 204
    move-object/from16 v24, v1

    .line 205
    .line 206
    const-string v1, "auth_api_credentials_validate_rp_id_and_calling_package"

    .line 207
    .line 208
    invoke-direct {v2, v1, v3, v4, v0}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 209
    .line 210
    .line 211
    new-instance v1, Lcom/google/android/gms/common/Feature;

    .line 212
    .line 213
    move-object/from16 v25, v2

    .line 214
    .line 215
    const-string v2, "auth_api_credentials_get_credential_list_for_browser"

    .line 216
    .line 217
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 218
    .line 219
    .line 220
    new-instance v2, Lcom/google/android/gms/common/Feature;

    .line 221
    .line 222
    move-object/from16 v26, v1

    .line 223
    .line 224
    const-string v1, "auth_api_credentials_update_webauthn_credential_specifics"

    .line 225
    .line 226
    invoke-direct {v2, v1, v3, v4, v0}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 227
    .line 228
    .line 229
    move-object v3, v7

    .line 230
    move-object v1, v8

    .line 231
    move-object/from16 v7, v16

    .line 232
    .line 233
    move-object/from16 v16, v17

    .line 234
    .line 235
    move-object/from16 v4, v19

    .line 236
    .line 237
    move-object/from16 v8, v20

    .line 238
    .line 239
    move-object/from16 v17, v21

    .line 240
    .line 241
    move-object/from16 v19, v23

    .line 242
    .line 243
    move-object/from16 v20, v24

    .line 244
    .line 245
    move-object/from16 v21, v25

    .line 246
    .line 247
    move-object/from16 v23, v2

    .line 248
    .line 249
    move-object/from16 v2, v18

    .line 250
    .line 251
    move-object/from16 v18, v22

    .line 252
    .line 253
    move-object/from16 v22, v26

    .line 254
    .line 255
    filled-new-array/range {v1 .. v23}, [Lcom/google/android/gms/common/Feature;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    sput-object v0, Lqj4;->i:[Lcom/google/android/gms/common/Feature;

    .line 260
    .line 261
    return-void
.end method
