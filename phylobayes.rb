class Phylobayes < Formula
  desc "PhyloBayes (Lartillot et al, 2009) is a Bayesian Monte Carlo Markov Chain (MCMC) sampler for phylogenetic reconstruction. Compared to other phylogenetic MCMC samplers, the main distinguishing feature of PhyloBayes is the underlying probabilistic model, CAT (Lartillot and Philippe, 2004). CAT is an infinite mixture model accounting for site-specific amino-acid or nucleotide preferences. It is well suited to phylogenomic studies using large multigene alignments."
  homepage "http://megasun.bch.umontreal.ca/People/lartillot/www/"
  version "4.1c"
  url "http://megasun.bch.umontreal.ca/People/lartillot/www/phylobayes4.1c.tar.gz"
  sha256 "3ab7e853d720537aeeae5c50605abb8559e24221dbc36d97aa02a31753ace943"

  def install
    ENV.deparallelize
    system "make -C sources"
    bin.install "data/ancestral"
    bin.install "data/bf"
    bin.install "data/bpcomp"
    bin.install "data/brpo"
    bin.install "data/cvrep"
    bin.install "data/moc"
    bin.install "data/pb"
    bin.install "data/ppred"
    bin.install "data/readcv"
    bin.install "data/readdiv"
    bin.install "data/readpb"
    bin.install "data/stopafter"
    bin.install "data/stoppb"
    bin.install "data/subdata"
    bin.install "data/subsample"
    bin.install "data/sumcv"
    bin.install "data/tracecomp"
    bin.install "data/tree2ps"
  end

end
