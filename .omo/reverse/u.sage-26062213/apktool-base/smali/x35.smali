.class public final Lx35;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lrx4;


# static fields
.field public static final o:Lx35;


# instance fields
.field public final n:Lrx4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lx35;

    .line 2
    .line 3
    invoke-direct {v0}, Lx35;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lx35;->o:Lx35;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lb45;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lvx4;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lvx4;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lpe4;->d(Lrx4;)Lrx4;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lx35;->n:Lrx4;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lx35;->n:Lrx4;

    .line 2
    .line 3
    invoke-interface {p0}, Lrx4;->zza()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lb45;

    .line 8
    .line 9
    return-object p0
.end method
