FROM mcr.microsoft.com/dotnet/sdk:8.0 As build
ADD . /nopcommerce
# This is where we will be storing the nop build
RUN mkdir /nopcommerce/published
RUN cd /nopcommerce && \
    dotnet publish -c Release -o /nopcommerce/published /nopcommerce/src/Presentation/Nop.Web/Nop.Web.csproj
RUN mkdir /nopcommerce/published/bin /nopcommerce/published/logs


