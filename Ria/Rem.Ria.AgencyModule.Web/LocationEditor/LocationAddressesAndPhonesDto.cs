﻿#region License

// Open Behavioral Health Information Technology Architecture (OBHITA.org)
// 
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//     * Redistributions of source code must retain the above copyright
//       notice, this list of conditions and the following disclaimer.
//     * Redistributions in binary form must reproduce the above copyright
//       notice, this list of conditions and the following disclaimer in the
//       documentation and/or other materials provided with the distribution.
//     * Neither the name of the <organization> nor the
//       names of its contributors may be used to endorse or promote products
//       derived from this software without specific prior written permission.
// 
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
// ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL <COPYRIGHT HOLDER> BE LIABLE FOR ANY
// DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
// ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

#endregion

using System.Runtime.Serialization;
using Pillar.Common.Collections;
using Rem.Infrastructure.Service.DataTransferObject;

namespace Rem.Ria.AgencyModule.Web.LocationEditor
{
    /// <summary>
    /// Data transfer object for LocationAddressesAndPhones class.
    /// </summary>
    public class LocationAddressesAndPhonesDto : KeyedDataTransferObject
    {
        #region Constants and Fields

        private SoftDeleteObservableCollection<LocationAddressAndPhoneDto> _addressesAndPhones;

        #endregion

        #region Public Properties

        /// <summary>
        /// Gets or sets the location addresses and phones.
        /// </summary>
        /// <value>The location addresses and phones.</value>
        [DataMember]
        public SoftDeleteObservableCollection<LocationAddressAndPhoneDto> LocationAddressesAndPhones
        {
            get { return _addressesAndPhones; }
            set { ApplySoftDeleteObservableCollectionChange ( ref _addressesAndPhones, () => LocationAddressesAndPhones, value ); }
        }

        #endregion
    }
}