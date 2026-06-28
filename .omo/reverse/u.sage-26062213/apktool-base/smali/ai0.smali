.class public final Lai0;
.super Lmd2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Leh3;


# instance fields
.field public B:Z

.field public final C:Z

.field public D:Lpe1;


# direct methods
.method public constructor <init>(ZZLpe1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmd2;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lai0;->B:Z

    .line 5
    .line 6
    iput-boolean p2, p0, Lai0;->C:Z

    .line 7
    .line 8
    iput-object p3, p0, Lai0;->D:Lpe1;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a0(Lph3;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lai0;->D:Lpe1;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d0()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lai0;->C:Z

    .line 2
    .line 3
    return p0
.end method

.method public final g0()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lai0;->B:Z

    .line 2
    .line 3
    return p0
.end method
