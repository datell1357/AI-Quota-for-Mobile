.class Lcom/google/api/client/auth/oauth/OAuthParameters$Parameter;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/auth/oauth/OAuthParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parameter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/api/client/auth/oauth/OAuthParameters$Parameter;",
        ">;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/api/client/auth/oauth/OAuthParameters$Parameter;->key:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/api/client/auth/oauth/OAuthParameters$Parameter;->value:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/api/client/auth/oauth/OAuthParameters$Parameter;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/client/auth/oauth/OAuthParameters$Parameter;->key:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/google/api/client/auth/oauth/OAuthParameters$Parameter;->key:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/google/api/client/auth/oauth/OAuthParameters$Parameter;->value:Ljava/lang/String;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/google/api/client/auth/oauth/OAuthParameters$Parameter;->value:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 21
    check-cast p1, Lcom/google/api/client/auth/oauth/OAuthParameters$Parameter;

    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth/OAuthParameters$Parameter;->compareTo(Lcom/google/api/client/auth/oauth/OAuthParameters$Parameter;)I

    move-result p0

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/auth/oauth/OAuthParameters$Parameter;->key:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/auth/oauth/OAuthParameters$Parameter;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
