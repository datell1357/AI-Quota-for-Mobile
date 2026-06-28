.class public abstract Lxp4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lka5;

.field public static volatile b:Ljava/lang/String;

.field public static final c:Lra3;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Lwp4;->o:Lwp4;

    .line 2
    .line 3
    sget v1, Lnp1;->p:I

    .line 4
    .line 5
    sget-object v1, Lf53;->w:Lf53;

    .line 6
    .line 7
    new-instance v2, Lsb5;

    .line 8
    .line 9
    new-instance v3, Lva5;

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    invoke-direct {v3, v0, v4, v1}, Lva5;-><init>(Lze1;ZLnp1;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v3, v2, Lsb5;->a:Lva5;

    .line 19
    .line 20
    new-instance v0, Lra3;

    .line 21
    .line 22
    const/16 v1, 0x17

    .line 23
    .line 24
    invoke-direct {v0, v1, v2}, Lra3;-><init>(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lxp4;->c:Lra3;

    .line 28
    .line 29
    new-instance v0, Lka5;

    .line 30
    .line 31
    const-string v1, "__phenotype_server_token"

    .line 32
    .line 33
    const-string v3, ""

    .line 34
    .line 35
    invoke-direct {v0, v1, v2, v3}, Lka5;-><init>(Ljava/lang/String;Lsb5;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sput-object v0, Lxp4;->a:Lka5;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    sput-object v0, Lxp4;->b:Ljava/lang/String;

    .line 42
    .line 43
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lxp4;->a:Lka5;

    .line 2
    .line 3
    invoke-virtual {v0}, Lna5;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method
