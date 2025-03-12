FROM alpine:latest

# Kullanıcıyı oluştur
RUN adduser -D -u 1001 appuser

WORKDIR /app
COPY app.sh /app/
RUN chmod +x app.sh

# Kullanıcıyı değiştir
USER 1001

# 8080 portunu dinlediğimizi belirt
EXPOSE 8080

# Uygulamayı başlat
CMD ["./app.sh"]

# Health check: Readiness ve liveness kontrolü
HEALTHCHECK --interval=5s --timeout=2s --start-period=5s --retries=3 \
    CMD test -f /tmp/ready || exit 1
