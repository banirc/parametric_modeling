function [a,e] = armcov( x, p)
%ARMCOV   AR parameter estimation via modified covariance method.
%   A = ARMCOV(X,ORDER) returns the polynomial A corresponding to the AR
%   parametric signal model estimate of vector X using the Modified Covariance
%   method. ORDER is the model order of the AR system. 
%
%   [A,E] = ARMCOV(...) returns the variance estimate E of the white noise
%   input to the AR model.
%
%   See also PMCOV, ARCOV, ARBURG, ARYULE, LPC, PRONY.

%   References:
%     [1] S. Lawrence Marple, DIGITAL SPECTRAL ANALYSIS WITH APPLICATIONS,
%              Prentice-Hall, 1987, Chapter 8
%     [2] Steven M. Kay, MODERN SPECTRAL ESTIMATION THEORY & APPLICATION,
%              Prentice-Hall, 1988, Chapter 7

%   Author(s): R. Losada and P. Pacheco
%   Copyright 1988-2002 The MathWorks, Inc.
%   $Revision: 1.13.4.3 $  $Date: 2011/05/13 18:06:53 $

error(nargchk(2,2,nargin,'struct'));

[a,e,msg,msgobj] = arparest(x,p,'modified');
if ~isempty(msg), error(msgobj); end

% [EOF] - armcov.m
