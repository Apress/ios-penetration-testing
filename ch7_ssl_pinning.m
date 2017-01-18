- (void)connection:(NSURLConnection *)connection willSendRequestForAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge
{
SecTrustRef serverTrust = challenge.protectionSpace.serverTrust;
SecCertificateRef certificate = SecTrustGetCertificateAtIndex(serverTrust, 0);
NSData *remoteCertificateData = CFBridgingRelease(SecCertificateCopyData(certificate));
NSString *cerPath = [[NSBundle mainBundle] pathForResource:@"MyLocalCertificate" ofType:@"cer"];
NSData *localCertData = [NSData dataWithContentsOfFile:cerPath];
if ([remoteCertificateData isEqualToData:localCertData]) {
NSURLCredential *credential = [NSURLCredential credentialForTrust:serverTrust];
[[challenge sender] useCredential:credential forAuthenticationChallenge:challenge];
}
else {
[[challenge sender] cancelAuthenticationChallenge:challenge];
}