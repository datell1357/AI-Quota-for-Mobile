.class public final Lgz2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpg2;
.implements Lqi0;


# instance fields
.field public final synthetic n:Lpg2;

.field public final o:Lhi0;


# direct methods
.method public constructor <init>(Lpg2;Lhi0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgz2;->n:Lpg2;

    .line 5
    .line 6
    iput-object p2, p0, Lgz2;->o:Lhi0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d()Lhi0;
    .locals 0

    .line 1
    iget-object p0, p0, Lgz2;->o:Lhi0;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lgz2;->n:Lpg2;

    .line 2
    .line 3
    invoke-interface {p0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lgz2;->n:Lpg2;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lpg2;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
