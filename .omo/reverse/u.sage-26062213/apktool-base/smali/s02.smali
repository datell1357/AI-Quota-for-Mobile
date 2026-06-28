.class public final Ls02;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Los0;

.field public final synthetic b:Ln12;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Ln12;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls02;->b:Ln12;

    .line 5
    .line 6
    iput-boolean p2, p0, Ls02;->c:Z

    .line 7
    .line 8
    new-instance p2, Lcc;

    .line 9
    .line 10
    const/16 v0, 0x10

    .line 11
    .line 12
    invoke-direct {p2, v0, p1}, Lcc;-><init>(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Lca;->m(Lne1;)Los0;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Ls02;->a:Los0;

    .line 20
    .line 21
    return-void
.end method
