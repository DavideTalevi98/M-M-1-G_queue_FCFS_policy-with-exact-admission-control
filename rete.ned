//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

import ned.IdealChannel;
import org.omnetpp.queueing.PassiveQueue;
import org.omnetpp.queueing.Sink;
import org.omnetpp.queueing.Source2;
import org.omnetpp.queueing.Server2;


network Rete
{
    parameters:
        double lambda;
        double mu;
        double a @unit("s");
        double b @unit("s");
        double c @unit("s");
        double d @unit("s");

        @display("bgb=667,372");
    submodules:
        source2: Source2 {
            @display("p=107,119");
        }
        server2: Server2 {
            @display("p=398,133");
        }
        sink: Sink {
            @display("p=548,138");
        }
        passiveQueue: PassiveQueue {
            @display("p=267,133");
        }
    connections:

        source2.out --> IdealChannel --> passiveQueue.in++;
        passiveQueue.out++ --> IdealChannel --> server2.in++;
        server2.out --> IdealChannel --> sink.in++;
}
