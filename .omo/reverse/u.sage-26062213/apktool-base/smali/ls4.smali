.class public interface abstract Lls4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final f:Lvs4;

.field public static final g:Lfs4;

.field public static final h:Ljp4;

.field public static final i:Ljp4;

.field public static final j:Ljp4;

.field public static final k:Loo4;

.field public static final l:Loo4;

.field public static final m:Lss4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lvs4;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lls4;->f:Lvs4;

    .line 7
    .line 8
    new-instance v0, Lfs4;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lls4;->g:Lfs4;

    .line 14
    .line 15
    new-instance v0, Ljp4;

    .line 16
    .line 17
    const-string v1, "continue"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljp4;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lls4;->h:Ljp4;

    .line 23
    .line 24
    new-instance v0, Ljp4;

    .line 25
    .line 26
    const-string v1, "break"

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljp4;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lls4;->i:Ljp4;

    .line 32
    .line 33
    new-instance v0, Ljp4;

    .line 34
    .line 35
    const-string v1, "return"

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljp4;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lls4;->j:Ljp4;

    .line 41
    .line 42
    new-instance v0, Loo4;

    .line 43
    .line 44
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 45
    .line 46
    invoke-direct {v0, v1}, Loo4;-><init>(Ljava/lang/Boolean;)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lls4;->k:Loo4;

    .line 50
    .line 51
    new-instance v0, Loo4;

    .line 52
    .line 53
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-direct {v0, v1}, Loo4;-><init>(Ljava/lang/Boolean;)V

    .line 56
    .line 57
    .line 58
    sput-object v0, Lls4;->l:Loo4;

    .line 59
    .line 60
    new-instance v0, Lss4;

    .line 61
    .line 62
    const-string v1, ""

    .line 63
    .line 64
    invoke-direct {v0, v1}, Lss4;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sput-object v0, Lls4;->m:Lss4;

    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Iterator;
.end method

.method public abstract c(Ljava/lang/String;Lqd1;Ljava/util/ArrayList;)Lls4;
.end method

.method public abstract h()Lls4;
.end method

.method public abstract zzc()Ljava/lang/String;
.end method

.method public abstract zzd()Ljava/lang/Double;
.end method

.method public abstract zze()Ljava/lang/Boolean;
.end method
