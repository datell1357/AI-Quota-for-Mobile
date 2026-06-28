.class public final Ljp0;
.super Lez0;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic n:Lws2;

.field public final synthetic o:Lwu4;


# direct methods
.method public constructor <init>(Lws2;Lwu4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ljp0;->n:Lws2;

    .line 5
    .line 6
    iput-object p2, p0, Ljp0;->o:Lwu4;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object p0, p0, Ljp0;->o:Lwu4;

    .line 2
    .line 3
    sget-object v0, Lw80;->i:Lbp1;

    .line 4
    .line 5
    iput-object v0, p0, Lwu4;->o:Ljava/lang/Object;

    .line 6
    .line 7
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Ljp0;->n:Lws2;

    .line 2
    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lbp1;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, v1}, Lbp1;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Ljp0;->o:Lwu4;

    .line 15
    .line 16
    iput-object v0, p0, Lwu4;->o:Ljava/lang/Object;

    .line 17
    .line 18
    return-void
.end method
