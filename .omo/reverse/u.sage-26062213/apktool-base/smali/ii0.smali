.class public final Lii0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lgi0;


# instance fields
.field public final n:Lpe1;

.field public final o:Lgi0;


# direct methods
.method public constructor <init>(Lgi0;Lpe1;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lii0;->n:Lpe1;

    .line 8
    .line 9
    instance-of p2, p1, Lii0;

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    check-cast p1, Lii0;

    .line 14
    .line 15
    iget-object p1, p1, Lii0;->o:Lgi0;

    .line 16
    .line 17
    :cond_0
    iput-object p1, p0, Lii0;->o:Lgi0;

    .line 18
    .line 19
    return-void
.end method
