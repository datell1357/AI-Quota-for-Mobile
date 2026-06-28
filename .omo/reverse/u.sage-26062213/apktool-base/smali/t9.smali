.class public final Lt9;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lph3;


# instance fields
.field public n:Z

.field public final synthetic o:Ljl3;


# direct methods
.method public constructor <init>(Ljl3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lt9;->o:Ljl3;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Loh3;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lt9;->o:Ljl3;

    .line 2
    .line 3
    if-ne p2, p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lt9;->n:Z

    .line 7
    .line 8
    :cond_0
    return-void
.end method
