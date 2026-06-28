.class public final Lkj4;
.super Lsj4;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lpw3;


# direct methods
.method public constructor <init>(Lij4;Lpw3;)V
    .locals 0

    const/4 p1, 0x5

    iput p1, p0, Lkj4;->c:I

    .line 35
    iput-object p2, p0, Lkj4;->d:Lpw3;

    .line 36
    const-string p1, "com.google.android.gms.auth.api.identity.internal.IAuthorizationCallback"

    invoke-direct {p0, p1}, Lsj4;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Llj4;Lpw3;I)V
    .locals 0

    iput p3, p0, Lkj4;->c:I

    packed-switch p3, :pswitch_data_0

    .line 31
    iput-object p2, p0, Lkj4;->d:Lpw3;

    .line 32
    const-string p1, "com.google.android.gms.auth.api.identity.internal.ISaveAccountLinkingTokenCallback"

    invoke-direct {p0, p1}, Lsj4;-><init>(Ljava/lang/String;)V

    return-void

    .line 33
    :pswitch_0
    iput-object p2, p0, Lkj4;->d:Lpw3;

    .line 34
    const-string p1, "com.google.android.gms.auth.api.identity.internal.ISavePasswordCallback"

    invoke-direct {p0, p1}, Lsj4;-><init>(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Loj4;Lpw3;I)V
    .locals 0

    .line 1
    iput p3, p0, Lkj4;->c:I

    .line 2
    .line 3
    packed-switch p3, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lkj4;->d:Lpw3;

    .line 7
    .line 8
    const-string p1, "com.google.android.gms.auth.api.identity.internal.IBeginSignInCallback"

    .line 9
    .line 10
    invoke-direct {p0, p1}, Lsj4;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iput-object p2, p0, Lkj4;->d:Lpw3;

    .line 15
    .line 16
    const-string p1, "com.google.android.gms.auth.api.identity.internal.IGetPhoneNumberHintIntentCallback"

    .line 17
    .line 18
    invoke-direct {p0, p1}, Lsj4;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_1
    iput-object p2, p0, Lkj4;->d:Lpw3;

    .line 23
    .line 24
    const-string p1, "com.google.android.gms.auth.api.identity.internal.IGetSignInIntentCallback"

    .line 25
    .line 26
    invoke-direct {p0, p1}, Lsj4;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final zba(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1

    .line 1
    iget p3, p0, Lkj4;->c:I

    .line 2
    .line 3
    const/4 p4, 0x0

    .line 4
    iget-object p0, p0, Lkj4;->d:Lpw3;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    packed-switch p3, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    .line 14
    invoke-static {p2, p1}, Lbk4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 19
    .line 20
    sget-object p3, Lcom/google/android/gms/auth/api/identity/AuthorizationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 21
    .line 22
    invoke-static {p2, p3}, Lbk4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    check-cast p3, Lcom/google/android/gms/auth/api/identity/AuthorizationResult;

    .line 27
    .line 28
    invoke-static {p2}, Lbk4;->d(Landroid/os/Parcel;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    invoke-virtual {p0, p3}, Lpw3;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/ApiExceptionUtil;->fromStatus(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Lpw3;->a(Ljava/lang/Exception;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    move p4, v0

    .line 49
    :cond_1
    return p4

    .line 50
    :pswitch_0
    if-ne p1, v0, :cond_2

    .line 51
    .line 52
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 53
    .line 54
    invoke-static {p2, p1}, Lbk4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 59
    .line 60
    sget-object p3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 61
    .line 62
    invoke-static {p2, p3}, Lbk4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    check-cast p3, Landroid/app/PendingIntent;

    .line 67
    .line 68
    invoke-static {p2}, Lbk4;->d(Landroid/os/Parcel;)V

    .line 69
    .line 70
    .line 71
    invoke-static {p1, p3, p0}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lpw3;)V

    .line 72
    .line 73
    .line 74
    move p4, v0

    .line 75
    :cond_2
    return p4

    .line 76
    :pswitch_1
    if-ne p1, v0, :cond_3

    .line 77
    .line 78
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 79
    .line 80
    invoke-static {p2, p1}, Lbk4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 85
    .line 86
    sget-object p3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 87
    .line 88
    invoke-static {p2, p3}, Lbk4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    check-cast p3, Landroid/app/PendingIntent;

    .line 93
    .line 94
    invoke-static {p2}, Lbk4;->d(Landroid/os/Parcel;)V

    .line 95
    .line 96
    .line 97
    invoke-static {p1, p3, p0}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lpw3;)V

    .line 98
    .line 99
    .line 100
    move p4, v0

    .line 101
    :cond_3
    return p4

    .line 102
    :pswitch_2
    if-ne p1, v0, :cond_4

    .line 103
    .line 104
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 105
    .line 106
    invoke-static {p2, p1}, Lbk4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 111
    .line 112
    sget-object p3, Lcom/google/android/gms/auth/api/identity/BeginSignInResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 113
    .line 114
    invoke-static {p2, p3}, Lbk4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    check-cast p3, Lcom/google/android/gms/auth/api/identity/BeginSignInResult;

    .line 119
    .line 120
    invoke-static {p2}, Lbk4;->d(Landroid/os/Parcel;)V

    .line 121
    .line 122
    .line 123
    invoke-static {p1, p3, p0}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lpw3;)V

    .line 124
    .line 125
    .line 126
    move p4, v0

    .line 127
    :cond_4
    return p4

    .line 128
    :pswitch_3
    if-ne p1, v0, :cond_5

    .line 129
    .line 130
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 131
    .line 132
    invoke-static {p2, p1}, Lbk4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 137
    .line 138
    sget-object p3, Lcom/google/android/gms/auth/api/identity/SavePasswordResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 139
    .line 140
    invoke-static {p2, p3}, Lbk4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 141
    .line 142
    .line 143
    move-result-object p3

    .line 144
    check-cast p3, Lcom/google/android/gms/auth/api/identity/SavePasswordResult;

    .line 145
    .line 146
    invoke-static {p2}, Lbk4;->d(Landroid/os/Parcel;)V

    .line 147
    .line 148
    .line 149
    invoke-static {p1, p3, p0}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lpw3;)V

    .line 150
    .line 151
    .line 152
    move p4, v0

    .line 153
    :cond_5
    return p4

    .line 154
    :pswitch_4
    if-ne p1, v0, :cond_7

    .line 155
    .line 156
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 157
    .line 158
    invoke-static {p2, p1}, Lbk4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 163
    .line 164
    sget-object p3, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 165
    .line 166
    invoke-static {p2, p3}, Lbk4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 167
    .line 168
    .line 169
    move-result-object p3

    .line 170
    check-cast p3, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenResult;

    .line 171
    .line 172
    invoke-static {p2}, Lbk4;->d(Landroid/os/Parcel;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    if-eqz p2, :cond_6

    .line 180
    .line 181
    invoke-virtual {p0, p3}, Lpw3;->b(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/ApiExceptionUtil;->fromStatus(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {p0, p1}, Lpw3;->a(Ljava/lang/Exception;)V

    .line 190
    .line 191
    .line 192
    :goto_1
    move p4, v0

    .line 193
    :cond_7
    return p4

    .line 194
    nop

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
