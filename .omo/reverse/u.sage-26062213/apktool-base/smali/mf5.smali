.class public final Lmf5;
.super Lnf5;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final e:Lnf5;

.field public static final f:Lnf5;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lmf5;

    .line 2
    .line 3
    new-instance v1, Lwm3;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2}, Lwm3;-><init>(I)V

    .line 7
    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v0, v3, v1}, Lnf5;-><init>(Lnf5;Lwm3;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lnf5;->b()Lnf5;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lmf5;->e:Lnf5;

    .line 18
    .line 19
    new-instance v1, Lmf5;

    .line 20
    .line 21
    new-instance v3, Lwm3;

    .line 22
    .line 23
    invoke-direct {v3, v2}, Lwm3;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v0, v3}, Lnf5;-><init>(Lnf5;Lwm3;)V

    .line 27
    .line 28
    .line 29
    iget-boolean v0, v1, Lnf5;->c:Z

    .line 30
    .line 31
    xor-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 34
    .line 35
    const-string v3, "Can\'t mutate after handing to trace"

    .line 36
    .line 37
    invoke-static {v0, v3}, Ln44;->b0(ZLjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lnf5;->c()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    xor-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    const-string v3, "Key already present"

    .line 47
    .line 48
    invoke-static {v0, v3}, Ln44;->b0(ZLjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, v1, Lnf5;->b:Lwm3;

    .line 52
    .line 53
    sget-object v3, Lnf5;->d:Llf5;

    .line 54
    .line 55
    invoke-virtual {v0, v3, v2}, Lwm3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Lnf5;->b()Lnf5;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lmf5;->f:Lnf5;

    .line 63
    .line 64
    return-void
.end method
