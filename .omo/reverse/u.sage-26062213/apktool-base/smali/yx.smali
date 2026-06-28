.class public final Lyx;
.super Lmd2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public B:Lwc;

.field public final C:Lc8;


# direct methods
.method public constructor <init>(Lwc;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmd2;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lyx;->B:Lwc;

    .line 5
    .line 6
    new-instance p1, Lc8;

    .line 7
    .line 8
    const/4 v0, 0x7

    .line 9
    invoke-direct {p1, v0, p0}, Lc8;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lyx;->C:Lc8;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final y0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lyx;->B:Lwc;

    .line 2
    .line 3
    iget-object p0, p0, Lyx;->C:Lc8;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lwc;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final z0()V
    .locals 1

    .line 1
    iget-object p0, p0, Lyx;->B:Lwc;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lwc;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    return-void
.end method
