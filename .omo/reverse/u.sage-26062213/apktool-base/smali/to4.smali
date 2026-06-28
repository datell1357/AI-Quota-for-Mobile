.class public abstract synthetic Lto4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# direct methods
.method public static final a(Ljava/lang/String;)I
    .locals 5

    .line 1
    const/16 v0, 0x3d

    .line 2
    .line 3
    invoke-static {v0}, Ldi0;->J(I)[I

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_1

    .line 10
    .line 11
    aget v3, v0, v2

    .line 12
    .line 13
    packed-switch v3, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    throw p0

    .line 18
    :pswitch_0
    const-string v4, "AppSuspended"

    .line 19
    .line 20
    goto/16 :goto_1

    .line 21
    .line 22
    :pswitch_1
    const-string v4, "AccountNotPresent"

    .line 23
    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    :pswitch_2
    const-string v4, "AuthBindingError"

    .line 27
    .line 28
    goto/16 :goto_1

    .line 29
    .line 30
    :pswitch_3
    const-string v4, "AuthSecurityError"

    .line 31
    .line 32
    goto/16 :goto_1

    .line 33
    .line 34
    :pswitch_4
    const-string v4, "ProfileUpgradeError"

    .line 35
    .line 36
    goto/16 :goto_1

    .line 37
    .line 38
    :pswitch_5
    const-string v4, "GPlusInterstitial"

    .line 39
    .line 40
    goto/16 :goto_1

    .line 41
    .line 42
    :pswitch_6
    const-string v4, "GPlusInvalidChar"

    .line 43
    .line 44
    goto/16 :goto_1

    .line 45
    .line 46
    :pswitch_7
    const-string v4, "GPlusNickname"

    .line 47
    .line 48
    goto/16 :goto_1

    .line 49
    .line 50
    :pswitch_8
    const-string v4, "GPlusOther"

    .line 51
    .line 52
    goto/16 :goto_1

    .line 53
    .line 54
    :pswitch_9
    const-string v4, "UsernameUnavailable"

    .line 55
    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    :pswitch_a
    const-string v4, "ServerError"

    .line 59
    .line 60
    goto/16 :goto_1

    .line 61
    .line 62
    :pswitch_b
    const-string v4, "RequestDenied"

    .line 63
    .line 64
    goto/16 :goto_1

    .line 65
    .line 66
    :pswitch_c
    const-string v4, "NoGmail"

    .line 67
    .line 68
    goto/16 :goto_1

    .line 69
    .line 70
    :pswitch_d
    const-string v4, "NotLoggedIn"

    .line 71
    .line 72
    goto/16 :goto_1

    .line 73
    .line 74
    :pswitch_e
    const-string v4, "LoginFail"

    .line 75
    .line 76
    goto/16 :goto_1

    .line 77
    .line 78
    :pswitch_f
    const-string v4, "ExistingUsername"

    .line 79
    .line 80
    goto/16 :goto_1

    .line 81
    .line 82
    :pswitch_10
    const-string v4, "DeletedGmail"

    .line 83
    .line 84
    goto/16 :goto_1

    .line 85
    .line 86
    :pswitch_11
    const-string v4, "BadUsername"

    .line 87
    .line 88
    goto/16 :goto_1

    .line 89
    .line 90
    :pswitch_12
    const-string v4, "BadRequest"

    .line 91
    .line 92
    goto/16 :goto_1

    .line 93
    .line 94
    :pswitch_13
    const-string v4, "WeakPassword"

    .line 95
    .line 96
    goto/16 :goto_1

    .line 97
    .line 98
    :pswitch_14
    const-string v4, "ALREADY_HAS_GMAIL"

    .line 99
    .line 100
    goto/16 :goto_1

    .line 101
    .line 102
    :pswitch_15
    const-string v4, "DeviceManagementRequiredOrSyncDisabled"

    .line 103
    .line 104
    goto/16 :goto_1

    .line 105
    .line 106
    :pswitch_16
    const-string v4, "DeviceManagementRequired"

    .line 107
    .line 108
    goto/16 :goto_1

    .line 109
    .line 110
    :pswitch_17
    const-string v4, "DeviceManagementScreenlockRequired"

    .line 111
    .line 112
    goto/16 :goto_1

    .line 113
    .line 114
    :pswitch_18
    const-string v4, "DeviceManagementDeactivated"

    .line 115
    .line 116
    goto/16 :goto_1

    .line 117
    .line 118
    :pswitch_19
    const-string v4, "DeviceManagementStaleSyncRequired"

    .line 119
    .line 120
    goto/16 :goto_1

    .line 121
    .line 122
    :pswitch_1a
    const-string v4, "DeviceManagementAdminPendingApproval"

    .line 123
    .line 124
    goto/16 :goto_1

    .line 125
    .line 126
    :pswitch_1b
    const-string v4, "DeviceManagementAdminBlocked"

    .line 127
    .line 128
    goto/16 :goto_1

    .line 129
    .line 130
    :pswitch_1c
    const-string v4, "DeviceManagementSyncDisabled"

    .line 131
    .line 132
    goto/16 :goto_1

    .line 133
    .line 134
    :pswitch_1d
    const-string v4, "DeviceManagementInternalError"

    .line 135
    .line 136
    goto/16 :goto_1

    .line 137
    .line 138
    :pswitch_1e
    const-string v4, "ThirdPartyDeviceManagementRequired"

    .line 139
    .line 140
    goto/16 :goto_1

    .line 141
    .line 142
    :pswitch_1f
    const-string v4, "UNREGISTERED_ON_API_CONSOLE"

    .line 143
    .line 144
    goto/16 :goto_1

    .line 145
    .line 146
    :pswitch_20
    const-string v4, "INVALID_AUDIENCE"

    .line 147
    .line 148
    goto/16 :goto_1

    .line 149
    .line 150
    :pswitch_21
    const-string v4, "RESTRICTED_CLIENT"

    .line 151
    .line 152
    goto/16 :goto_1

    .line 153
    .line 154
    :pswitch_22
    const-string v4, "PermissionDenied"

    .line 155
    .line 156
    goto/16 :goto_1

    .line 157
    .line 158
    :pswitch_23
    const-string v4, "UserCancel"

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :pswitch_24
    const-string v4, "INVALID_SCOPE"

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :pswitch_25
    const-string v4, "NeedRemoteConsent"

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :pswitch_26
    const-string v4, "NeedPermission"

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :pswitch_27
    const-string v4, "ChallengeRequired"

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :pswitch_28
    const-string v4, "ServiceDisabled"

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :pswitch_29
    const-string v4, "AccountDeleted"

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :pswitch_2a
    const-string v4, "CaptchaRequired"

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :pswitch_2b
    const-string v4, "AccountDisabled"

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :pswitch_2c
    const-string v4, "TermsNotAgreed"

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :pswitch_2d
    const-string v4, "NotVerified"

    .line 189
    .line 190
    goto :goto_1

    .line 191
    :pswitch_2e
    const-string v4, "Unknown"

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :pswitch_2f
    const-string v4, "NeedsBrowser"

    .line 195
    .line 196
    goto :goto_1

    .line 197
    :pswitch_30
    const-string v4, "PostSignInFlowRequired"

    .line 198
    .line 199
    goto :goto_1

    .line 200
    :pswitch_31
    const-string v4, "InvalidSecondFactor"

    .line 201
    .line 202
    goto :goto_1

    .line 203
    :pswitch_32
    const-string v4, "EmptyConsumerPackageOrSig"

    .line 204
    .line 205
    goto :goto_1

    .line 206
    :pswitch_33
    const-string v4, "BAD_REQUEST"

    .line 207
    .line 208
    goto :goto_1

    .line 209
    :pswitch_34
    const-string v4, "BadAuthentication"

    .line 210
    .line 211
    goto :goto_1

    .line 212
    :pswitch_35
    const-string v4, "IllegalArgument"

    .line 213
    .line 214
    goto :goto_1

    .line 215
    :pswitch_36
    const-string v4, "InternalError"

    .line 216
    .line 217
    goto :goto_1

    .line 218
    :pswitch_37
    const-string v4, "ServiceUnavailable"

    .line 219
    .line 220
    goto :goto_1

    .line 221
    :pswitch_38
    const-string v4, "NetworkError"

    .line 222
    .line 223
    goto :goto_1

    .line 224
    :pswitch_39
    const-string v4, "UNKNOWN_ERR"

    .line 225
    .line 226
    goto :goto_1

    .line 227
    :pswitch_3a
    const-string v4, "Ok"

    .line 228
    .line 229
    goto :goto_1

    .line 230
    :pswitch_3b
    const-string v4, "SocketTimeout"

    .line 231
    .line 232
    goto :goto_1

    .line 233
    :pswitch_3c
    const-string v4, "ClientLoginDisabled"

    .line 234
    .line 235
    :goto_1
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v4

    .line 239
    if-eqz v4, :cond_0

    .line 240
    .line 241
    return v3

    .line 242
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 243
    .line 244
    goto/16 :goto_0

    .line 245
    .line 246
    :cond_1
    const/16 p0, 0xf

    .line 247
    .line 248
    return p0

    .line 249
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(III)I
    .locals 0

    .line 1
    invoke-static {p0}, Ljn4;->a(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    add-int/2addr p0, p1

    .line 6
    add-int/2addr p0, p2

    .line 7
    return p0
.end method

.method public static c(IIII)I
    .locals 0

    .line 1
    invoke-static {p0}, Ljn4;->a(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    add-int/2addr p0, p1

    .line 6
    add-int/2addr p0, p2

    .line 7
    add-int/2addr p0, p3

    .line 8
    return p0
.end method

.method public static d(Ldo4;)Ldo4;
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/2addr v0, v0

    .line 6
    invoke-interface {p0, v0}, Ldo4;->F(I)Ldo4;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
