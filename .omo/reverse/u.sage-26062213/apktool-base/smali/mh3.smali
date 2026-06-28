.class public abstract Lmh3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Loh3;

.field public static final b:Loh3;

.field public static final c:Loh3;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Loh3;

    .line 2
    .line 3
    sget-object v1, Lkh3;->u:Lkh3;

    .line 4
    .line 5
    const-string v2, "TestTagsAsResourceId"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Loh3;-><init>(Ljava/lang/String;ZLdf1;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lmh3;->a:Loh3;

    .line 12
    .line 13
    sget-object v0, Lkh3;->s:Lkh3;

    .line 14
    .line 15
    new-instance v1, Loh3;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    const-string v4, "AccessibilityClassName"

    .line 19
    .line 20
    invoke-direct {v1, v4, v2, v0}, Loh3;-><init>(Ljava/lang/String;ZLdf1;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lmh3;->b:Loh3;

    .line 24
    .line 25
    new-instance v0, Loh3;

    .line 26
    .line 27
    const-string v1, "CredentialRequest"

    .line 28
    .line 29
    sget-object v2, Lkh3;->t:Lkh3;

    .line 30
    .line 31
    invoke-direct {v0, v1, v3, v2}, Loh3;-><init>(Ljava/lang/String;ZLdf1;)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lmh3;->c:Loh3;

    .line 35
    .line 36
    return-void
.end method
