.class public interface abstract Lcom/dji/ext_library/websocket/client/DnsResolver;
.super Ljava/lang/Object;
.source "DnsResolver.java"


# virtual methods
.method public abstract resolve(Ljava/net/URI;)Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method
