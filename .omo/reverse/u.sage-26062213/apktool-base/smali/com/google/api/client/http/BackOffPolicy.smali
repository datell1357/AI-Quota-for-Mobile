.class public interface abstract Lcom/google/api/client/http/BackOffPolicy;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final STOP:J = -0x1L


# virtual methods
.method public abstract getNextBackOffMillis()J
.end method

.method public abstract isBackOffRequired(I)Z
.end method

.method public abstract reset()V
.end method
