.class public abstract Lxc4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lpi1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lpi1;

    .line 2
    .line 3
    invoke-direct {v0}, Lpi1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lxc4;->a:Lpi1;

    .line 7
    .line 8
    return-void
.end method

.method public static final a(Landroid/content/Context;Ln1;Lqi0;Ljava/lang/String;Ldf1;Lgf1;Lpe1;)Lsc4;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v0, Lsc4;

    .line 14
    .line 15
    new-instance v1, Lq6;

    .line 16
    .line 17
    move-object v4, p1

    .line 18
    move-object v3, p2

    .line 19
    move-object v2, p3

    .line 20
    move-object v5, p4

    .line 21
    move-object v6, p5

    .line 22
    move-object v7, p6

    .line 23
    invoke-direct/range {v1 .. v7}, Lq6;-><init>(Ljava/lang/String;Lqi0;Ln1;Ldf1;Lgf1;Lpe1;)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x6

    .line 27
    invoke-direct {v0, p0, p1, v1}, Lsc4;-><init>(Landroid/content/Context;ILpe1;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ln1;Lqi0;Ljava/lang/String;Lpe1;)Lsc4;
    .locals 7

    .line 1
    new-instance v4, Lkc;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/4 v1, 0x3

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v4, v0, v2, v1}, Lkc;-><init>(ILdh0;I)V

    .line 7
    .line 8
    .line 9
    new-instance v5, Ltc4;

    .line 10
    .line 11
    const/4 v0, 0x4

    .line 12
    invoke-direct {v5, v0, v2}, Lbv3;-><init>(ILdh0;)V

    .line 13
    .line 14
    .line 15
    move-object v0, p0

    .line 16
    move-object v1, p1

    .line 17
    move-object v2, p2

    .line 18
    move-object v3, p3

    .line 19
    move-object v6, p4

    .line 20
    invoke-static/range {v0 .. v6}, Lxc4;->a(Landroid/content/Context;Ln1;Lqi0;Ljava/lang/String;Ldf1;Lgf1;Lpe1;)Lsc4;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static final c(Landroid/content/Context;Ln1;Lps;Lqi0;Ljava/lang/String;Ln8;Ly84;Lv43;ZLpe1;)Lsc4;
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance v0, Lwc4;

    .line 26
    .line 27
    const/4 v8, 0x0

    .line 28
    move-object v6, p2

    .line 29
    move-object v2, p4

    .line 30
    move-object v5, p5

    .line 31
    move-object v3, p6

    .line 32
    move-object/from16 v4, p7

    .line 33
    .line 34
    move/from16 v1, p8

    .line 35
    .line 36
    move-object/from16 v7, p9

    .line 37
    .line 38
    invoke-direct/range {v0 .. v8}, Lwc4;-><init>(ZLjava/lang/String;Ly84;Lv43;Ln8;Lps;Lpe1;Ldh0;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p1, p3, p4, v0}, Lxc4;->b(Landroid/content/Context;Ln1;Lqi0;Ljava/lang/String;Lpe1;)Lsc4;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method
