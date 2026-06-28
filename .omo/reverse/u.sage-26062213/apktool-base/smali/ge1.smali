.class public final Lge1;
.super Ljava/lang/RuntimeException;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final n:Lhe1;

.field public final o:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lhe1;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lge1;->n:Lhe1;

    .line 5
    .line 6
    iput-object p2, p0, Lge1;->o:Ljava/lang/Throwable;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getCause()Ljava/lang/Throwable;
    .locals 0

    .line 1
    iget-object p0, p0, Lge1;->o:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object p0
.end method
