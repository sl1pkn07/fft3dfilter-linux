LDFLAGS=-lfftw3 -lfftw3_threads
CXXFLAGS=-fPIC

fft3dfilter.so: fft3dfilter.o fft3dfilter_c.o
	$(CXX) -shared $(CXXFLAGS) fft3dfilter.o fft3dfilter_c.o $(LDFLAGS) -o fft3dfilter.so

fft3dfilter.o: fft3dfilter.cpp info.h
	$(CXX) $(LDFLAGS) $(CXXFLAGS) fft3dfilter.cpp -c

fft3dfilter_c.o: fft3dfilter_c.cpp
	$(CXX) $(LDFLAGS) $(CXXFLAGS) fft3dfilter_c.cpp -c

clean:
	rm fft3dfilter.so fft3dfilter.o fft3dfilter_c.o
