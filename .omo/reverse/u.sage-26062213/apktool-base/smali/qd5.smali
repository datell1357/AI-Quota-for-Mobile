.class public final Lqd5;
.super Lsd5;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lnd5;


# instance fields
.field public final n:Ljava/io/FileOutputStream;

.field public final o:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/FileOutputStream;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqd5;->n:Ljava/io/FileOutputStream;

    .line 5
    .line 6
    iput-object p2, p0, Lqd5;->o:Ljava/io/File;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zza()Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lqd5;->o:Ljava/io/File;

    .line 2
    .line 3
    return-object p0
.end method
