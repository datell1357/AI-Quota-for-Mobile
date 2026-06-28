.class public final Lps3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Lcz3;

.field public b:Z

.field public c:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ldz3;->a:Lcz3;

    .line 5
    .line 6
    iput-object v0, p0, Lps3;->a:Lcz3;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    .line 1
    iget-boolean v0, p0, Lps3;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lps3;->a:Lcz3;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget-wide v2, p0, Lps3;->c:J

    .line 15
    .line 16
    sub-long/2addr v0, v2

    .line 17
    return-wide v0

    .line 18
    :cond_0
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lps3;->a()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide v2, 0x4e94914f0000L

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    div-long v2, v0, v2

    .line 11
    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    cmp-long p0, v2, v4

    .line 15
    .line 16
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 17
    .line 18
    if-lez p0, :cond_0

    .line 19
    .line 20
    sget-object p0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-wide v6, 0x34630b8a000L

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    div-long v6, v0, v6

    .line 29
    .line 30
    cmp-long p0, v6, v4

    .line 31
    .line 32
    if-lez p0, :cond_1

    .line 33
    .line 34
    sget-object p0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-wide v6, 0xdf8475800L

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    div-long v6, v0, v6

    .line 43
    .line 44
    cmp-long p0, v6, v4

    .line 45
    .line 46
    if-lez p0, :cond_2

    .line 47
    .line 48
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const-wide/32 v6, 0x3b9aca00

    .line 52
    .line 53
    .line 54
    div-long v6, v0, v6

    .line 55
    .line 56
    cmp-long p0, v6, v4

    .line 57
    .line 58
    if-lez p0, :cond_3

    .line 59
    .line 60
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    const-wide/32 v6, 0xf4240

    .line 64
    .line 65
    .line 66
    div-long v6, v0, v6

    .line 67
    .line 68
    cmp-long p0, v6, v4

    .line 69
    .line 70
    if-lez p0, :cond_4

    .line 71
    .line 72
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    const-wide/16 v6, 0x3e8

    .line 76
    .line 77
    div-long v6, v0, v6

    .line 78
    .line 79
    cmp-long p0, v6, v4

    .line 80
    .line 81
    if-lez p0, :cond_5

    .line 82
    .line 83
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    move-object p0, v2

    .line 87
    :goto_0
    long-to-double v0, v0

    .line 88
    const-wide/16 v3, 0x1

    .line 89
    .line 90
    invoke-virtual {v2, v3, v4, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 91
    .line 92
    .line 93
    move-result-wide v2

    .line 94
    long-to-double v2, v2

    .line 95
    div-double/2addr v0, v2

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 102
    .line 103
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const-string v1, "%.4g"

    .line 112
    .line 113
    invoke-static {v3, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v0, " "

    .line 121
    .line 122
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    sget-object v0, Los3;->a:[I

    .line 126
    .line 127
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    aget p0, v0, p0

    .line 132
    .line 133
    packed-switch p0, :pswitch_data_0

    .line 134
    .line 135
    .line 136
    new-instance p0, Ljava/lang/AssertionError;

    .line 137
    .line 138
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 139
    .line 140
    .line 141
    throw p0

    .line 142
    :pswitch_0
    const-string p0, "d"

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :pswitch_1
    const-string p0, "h"

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :pswitch_2
    const-string p0, "min"

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :pswitch_3
    const-string p0, "s"

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :pswitch_4
    const-string p0, "ms"

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :pswitch_5
    const-string p0, "\u03bcs"

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :pswitch_6
    const-string p0, "ns"

    .line 161
    .line 162
    :goto_1
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    return-object p0

    .line 170
    nop

    .line 171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
