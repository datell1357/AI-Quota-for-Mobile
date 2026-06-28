.class public final Lmu1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ll44;


# static fields
.field public static final a:Llu1;

.field public static final b:Llu1;

.field public static final c:Llu1;

.field public static final d:Llu1;

.field public static final e:Llu1;

.field public static final f:Llu1;

.field public static final g:Llu1;

.field public static final h:Llu1;

.field public static final i:Lf34;

.field public static final j:Lmu1$b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Llu1;

    .line 2
    .line 3
    const-string v1, "seconds"

    .line 4
    .line 5
    const-string v2, "nanos"

    .line 6
    .line 7
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/4 v4, 0x2

    .line 12
    invoke-direct {v0, v3, v4}, Llu1;-><init>([Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lmu1;->a:Llu1;

    .line 16
    .line 17
    new-instance v0, Llu1;

    .line 18
    .line 19
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x3

    .line 24
    invoke-direct {v0, v1, v2}, Llu1;-><init>([Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lmu1;->b:Llu1;

    .line 28
    .line 29
    new-instance v0, Llu1;

    .line 30
    .line 31
    const-string v1, "year"

    .line 32
    .line 33
    const-string v2, "month"

    .line 34
    .line 35
    const-string v3, "day"

    .line 36
    .line 37
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const/4 v5, 0x4

    .line 42
    invoke-direct {v0, v4, v5}, Llu1;-><init>([Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lmu1;->c:Llu1;

    .line 46
    .line 47
    new-instance v0, Llu1;

    .line 48
    .line 49
    const-string v4, "second"

    .line 50
    .line 51
    const-string v5, "nano"

    .line 52
    .line 53
    const-string v6, "hour"

    .line 54
    .line 55
    const-string v7, "minute"

    .line 56
    .line 57
    filled-new-array {v6, v7, v4, v5}, [Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    const/4 v5, 0x5

    .line 62
    invoke-direct {v0, v4, v5}, Llu1;-><init>([Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    sput-object v0, Lmu1;->d:Llu1;

    .line 66
    .line 67
    new-instance v0, Llu1;

    .line 68
    .line 69
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const/4 v4, 0x6

    .line 74
    invoke-direct {v0, v3, v4}, Llu1;-><init>([Ljava/lang/String;I)V

    .line 75
    .line 76
    .line 77
    sput-object v0, Lmu1;->e:Llu1;

    .line 78
    .line 79
    new-instance v0, Llu1;

    .line 80
    .line 81
    const-string v3, "months"

    .line 82
    .line 83
    const-string v4, "days"

    .line 84
    .line 85
    const-string v5, "years"

    .line 86
    .line 87
    filled-new-array {v5, v3, v4}, [Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    const/4 v4, 0x7

    .line 92
    invoke-direct {v0, v3, v4}, Llu1;-><init>([Ljava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lmu1;->f:Llu1;

    .line 96
    .line 97
    new-instance v0, Llu1;

    .line 98
    .line 99
    filled-new-array {v1}, [Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    const/4 v4, 0x0

    .line 104
    invoke-direct {v0, v3, v4}, Llu1;-><init>([Ljava/lang/String;I)V

    .line 105
    .line 106
    .line 107
    sput-object v0, Lmu1;->g:Llu1;

    .line 108
    .line 109
    new-instance v0, Llu1;

    .line 110
    .line 111
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    const/4 v2, 0x1

    .line 116
    invoke-direct {v0, v1, v2}, Llu1;-><init>([Ljava/lang/String;I)V

    .line 117
    .line 118
    .line 119
    sput-object v0, Lmu1;->h:Llu1;

    .line 120
    .line 121
    new-instance v0, Lmu1$a;

    .line 122
    .line 123
    invoke-direct {v0}, Lmu1$a;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Lg34;->a()Lf34;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    sput-object v0, Lmu1;->i:Lf34;

    .line 131
    .line 132
    new-instance v0, Lmu1$b;

    .line 133
    .line 134
    invoke-direct {v0}, Lmu1$b;-><init>()V

    .line 135
    .line 136
    .line 137
    sput-object v0, Lmu1;->j:Lmu1$b;

    .line 138
    .line 139
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Ljava/io/Serializable;Ljava/lang/String;Lww1;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Lfw1;

    .line 5
    .line 6
    const-string v0, "Missing "

    .line 7
    .line 8
    const-string v1, " field; at path "

    .line 9
    .line 10
    invoke-static {v0, p1, v1}, Ldi0;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p2, v0}, Lww1;->K(Z)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x5

    .line 27
    invoke-direct {p0, p1, p2}, Lv00;-><init>(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method public static b(Lpi1;)Lf34;
    .locals 3

    .line 1
    invoke-static {}, Lku1;->f()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v1, Lq44;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lq44;-><init>(Ljava/lang/reflect/Type;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lpi1;->b(Lq44;)Lg34;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {}, Lku1;->y()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lq44;

    .line 22
    .line 23
    invoke-direct {v2, v1}, Lq44;-><init>(Ljava/lang/reflect/Type;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v2}, Lpi1;->b(Lq44;)Lg34;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    new-instance v1, Lqu1;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-direct {v1, v0, p0, v2}, Lqu1;-><init>(Lg34;Lg34;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lg34;->a()Lf34;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method
