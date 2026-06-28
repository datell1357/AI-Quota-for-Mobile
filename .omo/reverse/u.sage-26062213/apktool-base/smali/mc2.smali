.class public final Lmc2;
.super Ljava/nio/charset/CharacterCodingException;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/nio/charset/CharacterCodingException;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lmc2;->n:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lmc2;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
