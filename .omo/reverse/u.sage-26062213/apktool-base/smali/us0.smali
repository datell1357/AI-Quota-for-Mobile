.class public final Lus0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final e:Lrx2;

.field public static final f:Lrx2;

.field public static final g:Z

.field public static final h:Lrx2;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lb23;

.field public final c:Lb23;

.field public final d:Lb23;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lrx2;

    .line 2
    .line 3
    const-string v1, "webview_visible"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lrx2;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lus0;->e:Lrx2;

    .line 9
    .line 10
    new-instance v0, Lrx2;

    .line 11
    .line 12
    const-string v1, "firebase_analytics_enabled"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lrx2;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lus0;->f:Lrx2;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    sput-boolean v0, Lus0;->g:Z

    .line 21
    .line 22
    new-instance v0, Lrx2;

    .line 23
    .line 24
    const-string v1, "simulate_logged_out_enabled"

    .line 25
    .line 26
    invoke-direct {v0, v1}, Lrx2;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lus0;->h:Lrx2;

    .line 30
    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lus0;->a:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {p1}, Lvs0;->a(Landroid/content/Context;)Llm0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lpx2;

    .line 14
    .line 15
    iget-object v0, v0, Lpx2;->a:Llm0;

    .line 16
    .line 17
    invoke-interface {v0}, Llm0;->b()La81;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lyq;

    .line 22
    .line 23
    const/16 v2, 0x11

    .line 24
    .line 25
    invoke-direct {v1, v0, v2}, Lyq;-><init>(La81;I)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lzu0;->a:Lzp0;

    .line 29
    .line 30
    sget-object v0, Llp0;->p:Llp0;

    .line 31
    .line 32
    invoke-static {}, Lk30;->f()Lbu3;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v2}, Lca;->B(Lfi0;Lhi0;)Lhi0;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {v2}, Ldm0;->c(Lhi0;)Lbh0;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {}, Lnm3;->a()Lrr3;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-static {v1, v2, v3, v4}, Lqj0;->Y(La81;Lqi0;Lom3;Ljava/lang/Object;)Lb23;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iput-object v1, p0, Lus0;->b:Lb23;

    .line 58
    .line 59
    invoke-static {p1}, Lvs0;->a(Landroid/content/Context;)Llm0;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lpx2;

    .line 64
    .line 65
    iget-object v1, v1, Lpx2;->a:Llm0;

    .line 66
    .line 67
    invoke-interface {v1}, Llm0;->b()La81;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    new-instance v2, Lyq;

    .line 72
    .line 73
    const/16 v3, 0x12

    .line 74
    .line 75
    invoke-direct {v2, v1, v3}, Lyq;-><init>(La81;I)V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lk30;->f()Lbu3;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {v0, v1}, Lca;->B(Lfi0;Lhi0;)Lhi0;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v1}, Ldm0;->c(Lhi0;)Lbh0;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-static {}, Lnm3;->a()Lrr3;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    sget-boolean v5, Lus0;->g:Z

    .line 95
    .line 96
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-static {v2, v1, v3, v5}, Lqj0;->Y(La81;Lqi0;Lom3;Ljava/lang/Object;)Lb23;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    iput-object v1, p0, Lus0;->c:Lb23;

    .line 105
    .line 106
    invoke-static {p1}, Lvs0;->a(Landroid/content/Context;)Llm0;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Lpx2;

    .line 111
    .line 112
    iget-object p1, p1, Lpx2;->a:Llm0;

    .line 113
    .line 114
    invoke-interface {p1}, Llm0;->b()La81;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    new-instance v1, Lyq;

    .line 119
    .line 120
    const/16 v2, 0x13

    .line 121
    .line 122
    invoke-direct {v1, p1, v2}, Lyq;-><init>(La81;I)V

    .line 123
    .line 124
    .line 125
    invoke-static {}, Lk30;->f()Lbu3;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {v0, p1}, Lca;->B(Lfi0;Lhi0;)Lhi0;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-static {p1}, Ldm0;->c(Lhi0;)Lbh0;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-static {}, Lnm3;->a()Lrr3;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-static {v1, p1, v0, v4}, Lqj0;->Y(La81;Lqi0;Lom3;Ljava/lang/Object;)Lb23;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    iput-object p1, p0, Lus0;->d:Lb23;

    .line 146
    .line 147
    return-void
.end method
